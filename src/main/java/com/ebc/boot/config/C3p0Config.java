package com.ebc.boot.config;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.jdbc.DataSourceBuilder;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import javax.sql.DataSource;

/**
 * @author k
 * Introduction :
 */

@Configuration
public class C3p0Config {
    @Bean(name = "c3p0")
    @ConfigurationProperties(prefix = "spring.datasource.c3p0")
    public DataSource createC3p0() {
        return DataSourceBuilder.create().type(com.mchange.v2.c3p0.ComboPooledDataSource.class).build();
    }
}
