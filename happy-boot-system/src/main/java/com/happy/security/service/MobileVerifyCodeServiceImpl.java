package com.happy.security.service;
import lombok.AllArgsConstructor;
import com.happy.api.module.message.SmsApi;
import com.happy.framework.security.mobile.MobileVerifyCodeService;
import org.springframework.stereotype.Service;
/**
 * 短信验证码效验
 *
 * @author skycoder
 */
@Service
@AllArgsConstructor
public class MobileVerifyCodeServiceImpl implements MobileVerifyCodeService {
    private final SmsApi smsApi;
    @Override
    public boolean verifyCode(String mobile, String code) {
        return smsApi.verifyCode(mobile, code);
    }
}
