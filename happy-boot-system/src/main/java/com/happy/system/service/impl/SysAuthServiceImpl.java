package com.happy.system.service.impl;
import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.RandomUtil;
import lombok.AllArgsConstructor;
import com.happy.api.module.message.SmsApi;
import com.happy.framework.common.constant.Constant;
import com.happy.framework.common.exception.ServerException;
import com.happy.framework.security.cache.TokenStoreCache;
import com.happy.framework.security.crypto.Sm2Util;
import com.happy.framework.security.mobile.MobileAuthenticationToken;
import com.happy.framework.security.third.ThirdAuthenticationToken;
import com.happy.framework.security.third.ThirdLogin;
import com.happy.framework.security.user.UserDetail;
import com.happy.system.enums.LoginOperationEnum;
import com.happy.system.service.*;
import com.happy.system.vo.*;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Service;
/**
 * 权限认证服务
 *
 * 
 */
@Service
@AllArgsConstructor
public class SysAuthServiceImpl implements SysAuthService {
    private final SysCaptchaService sysCaptchaService;
    private final TokenStoreCache tokenStoreCache;
    private final AuthenticationManager authenticationManager;
    private final SysLogLoginService sysLogLoginService;
    private final SysUserService sysUserService;
    private final SysUserTokenService sysUserTokenService;
    private final SmsApi smsApi;
    @Override
    public SysUserTokenVO loginByAccount(SysAccountLoginVO login) {
        // 验证码效验
        boolean flag = sysCaptchaService.validate(login.getKey(), login.getCaptcha());
        if (!flag) {
            // 保存登录日志
            sysLogLoginService.save(login.getUsername(), Constant.FAIL, LoginOperationEnum.CAPTCHA_FAIL.getValue());
            throw new ServerException("验证码错误");
        }
        Authentication authentication;
        try {
            // 用户认证
            authentication = authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(login.getUsername(), Sm2Util.decrypt(login.getPassword())));
        } catch (BadCredentialsException e) {
            throw new ServerException("用户名或密码错误");
        }
        // 用户信息
        UserDetail user = (UserDetail) authentication.getPrincipal();
        // 生成 accessToken
        SysUserTokenVO userTokenVO = sysUserTokenService.createToken(user.getId());
        // 保存用户信息到缓存
        tokenStoreCache.saveUser(userTokenVO.getAccessToken(), user);
        return userTokenVO;
    }
    @Override
    public SysUserTokenVO loginByMobile(SysMobileLoginVO login) {
        Authentication authentication;
        try {
            // 用户认证
            authentication = authenticationManager.authenticate(
                    new MobileAuthenticationToken(login.getMobile(), login.getCode()));
        } catch (BadCredentialsException e) {
            throw new ServerException("手机号或验证码错误");
        }
        // 用户信息
        UserDetail user = (UserDetail) authentication.getPrincipal();
        // 生成 accessToken
        SysUserTokenVO userTokenVO = sysUserTokenService.createToken(user.getId());
        // 保存用户信息到缓存
        tokenStoreCache.saveUser(userTokenVO.getAccessToken(), user);
        return userTokenVO;
    }
    @Override
    public SysUserTokenVO loginByThird(SysThirdCallbackVO login) {
        Authentication authentication;
        try {
            // 转换对象
            ThirdLogin thirdLogin = BeanUtil.copyProperties(login, ThirdLogin.class);
            // 用户认证
            authentication = authenticationManager.authenticate(new ThirdAuthenticationToken(thirdLogin));
        } catch (BadCredentialsException e) {
            throw new ServerException("第三方登录失败");
        }
        // 用户信息
        UserDetail user = (UserDetail) authentication.getPrincipal();
        // 生成 accessToken
        SysUserTokenVO userTokenVO = sysUserTokenService.createToken(user.getId());
        // 保存用户信息到缓存
        tokenStoreCache.saveUser(userTokenVO.getAccessToken(), user);
        return userTokenVO;
    }
    @Override
    public boolean sendCode(String mobile) {
        // 生成6位验证码
        String code = RandomUtil.randomNumbers(6);
        SysUserVO user = sysUserService.getByMobile(mobile);
        if (user == null) {
            throw new ServerException("手机号未注册");
        }
        // 发送短信
        return smsApi.sendCode(mobile, "code", code);
    }
    @Override
    public AccessTokenVO getAccessToken(String refreshToken) {
        SysUserTokenVO token = sysUserTokenService.refreshToken(refreshToken);
        // 封装 AccessToken
        AccessTokenVO accessToken = new AccessTokenVO();
        accessToken.setAccessToken(token.getAccessToken());
        accessToken.setAccessTokenExpire(token.getAccessTokenExpire());
        return accessToken;
    }
    @Override
    public void logout(String accessToken) {
        // 用户信息
        UserDetail user = tokenStoreCache.getUser(accessToken);
        // 删除用户信息
        tokenStoreCache.deleteUser(accessToken);
        // Token过期
        sysUserTokenService.expireToken(user.getId());
        // 保存登录日志
        sysLogLoginService.save(user.getUsername(), Constant.SUCCESS, LoginOperationEnum.LOGOUT_SUCCESS.getValue());
    }
}
