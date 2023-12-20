/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package fintrex.intranet.config;

import jakarta.servlet.http.HttpSession;
import javax.sql.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jdbc.repository.config.AbstractJdbcConfiguration;
import org.springframework.data.jdbc.repository.config.EnableJdbcAuditing;
import org.springframework.data.jdbc.repository.config.EnableJdbcRepositories;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcOperations;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.transaction.PlatformTransactionManager;

/**
 *
 * @author asus
 */
@Configuration
@EnableJdbcRepositories(basePackages = "fintrex.intranet.repo")
@EnableJdbcAuditing(auditorAwareRef = "httpSessionAuditorAware")
public class DbConfig extends AbstractJdbcConfiguration {

    @Bean
    public DataSource dataSource() {
        final DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/fintrex_intranet?useUnicode=true&characterEncoding=UTF-8");
//        dataSource.setUrl("jdbc:mysql://192.168.40.7:3306/fintrex_intranet?useUnicode=true&characterEncoding=UTF-8");
        dataSource.setUsername("root");
        dataSource.setPassword("1234");
//      
//        dataSource.setPassword("Test@-123");
        return dataSource;
    }

    @Bean
    NamedParameterJdbcOperations namedParameterJdbcOperations(DataSource dataSource) {
        return new NamedParameterJdbcTemplate(dataSource);
    }

    @Bean
    public PlatformTransactionManager transactionManager(DataSource dataSource) {
        return new DataSourceTransactionManager(dataSource);
    }

    @Bean
    public AuditorAware<Integer> auditorAware(HttpSession session) {
        return new HttpSessionAuditorAware(session);
    }

    @Bean(name = "applicationJdbcTemplate")
    public JdbcTemplate applicationDataConnection() {
        return new JdbcTemplate(dataSource());
    }
}
