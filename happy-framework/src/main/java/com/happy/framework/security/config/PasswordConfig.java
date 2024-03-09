package com.happy.framework.security.config;
import com.happy.framework.security.crypto.Sm3PasswordEncoder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.password.PasswordEncoder;
/**
 * 加密配置
 *
 * @author skycoder
 */
@Configuration
public class PasswordConfig {
    @Bean
    public PasswordEncoder passwordEncoder() {
        // 使用国密SM3加密
        return new Sm3PasswordEncoder();
        // return PasswordEncoderFactories.createDelegatingPasswordEncoder();
    }
}
