package com.ebc.boot.config;

import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.google.code.kaptcha.util.Config;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import java.util.Properties;

/**
 * @author k
 * Introduction :
 */

@Configuration
public class KaptchaConfig {

    @Bean
    public DefaultKaptcha getDefaultKaptcha() {
        DefaultKaptcha kaptcha = new DefaultKaptcha();
        Properties properties =  new Properties();
        properties.setProperty("kaptcha.border", "no");
        properties.setProperty("kaptcha.textproducer.font.size", "40");
        properties.setProperty("kaptcha.session.key", "codeKaptcha");
        properties.setProperty("kaptcha.textproducer.char.space", "8");
        properties.setProperty("kaptcha.background.clear.to", "green");
        Config config = new Config(properties);
        kaptcha.setConfig(config);
        return kaptcha;
    }
}
