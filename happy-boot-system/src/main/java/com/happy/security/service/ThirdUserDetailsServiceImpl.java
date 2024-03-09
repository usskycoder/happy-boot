package com.happy.security.service;
import lombok.AllArgsConstructor;
import com.happy.framework.security.third.ThirdUserDetailsService;
import com.happy.system.convert.SysUserConvert;
import com.happy.system.dao.SysUserDao;
import com.happy.system.entity.SysUserEntity;
import com.happy.system.service.SysThirdLoginService;
import com.happy.system.service.SysUserDetailsService;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
/**
 * 第三方登录，ThirdUserDetailsService
 *
 * @author skycoder
 */
@Service
@AllArgsConstructor
public class ThirdUserDetailsServiceImpl implements ThirdUserDetailsService {
    private final SysUserDetailsService sysUserDetailsService;
    private final SysThirdLoginService sysThirdLoginService;
    private final SysUserDao sysUserDao;
    @Override
    public UserDetails loadUserByOpenTypeAndOpenId(String openType, String openId) throws UsernameNotFoundException {
        Long userId = sysThirdLoginService.getUserIdByOpenTypeAndOpenId(openType, openId);
        SysUserEntity userEntity = sysUserDao.getById(userId);
        if (userEntity == null) {
            throw new UsernameNotFoundException("绑定的系统用户，不存在");
        }
        return sysUserDetailsService.getUserDetails(SysUserConvert.INSTANCE.convertDetail(userEntity));
    }
}
