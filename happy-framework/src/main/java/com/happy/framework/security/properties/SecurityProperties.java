package com.happy.framework.security.properties;
import lombok.Data;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.context.annotation.Configuration;
/**
 * 安全配置项
 *
 * @author skycoder
 */
@Data
@Configuration
@ConfigurationProperties(prefix = "happy.security")
public class SecurityProperties {
    /**
     * accessToken 过期时间(单位：秒)，默认2小时
     */
    private int accessTokenExpire = 60 * 60 * 2;
    /**
     * refreshToken 过期时间(单位：秒)，默认15天
     */
    private int refreshTokenExpire = 60 * 60 * 24 * 15;
}
