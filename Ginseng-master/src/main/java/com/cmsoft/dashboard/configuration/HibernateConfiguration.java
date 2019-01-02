package com.cmsoft.dashboard.configuration;
 
import java.util.Properties;
 
import javax.sql.DataSource;
 
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.orm.jpa.HibernateJpaAutoConfiguration;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.context.annotation.PropertySource;
import org.springframework.core.env.Environment;
import org.springframework.dao.annotation.PersistenceExceptionTranslationPostProcessor;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.orm.jpa.JpaVendorAdapter;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter;
import org.springframework.transaction.annotation.EnableTransactionManagement;
 
 
 
@Configuration
@ComponentScan({ "com.cmsoft.dashboard" })
@EnableTransactionManagement
@PropertySource(value = { "classpath:application.properties" })
@EnableAutoConfiguration(exclude={HibernateJpaAutoConfiguration.class})
public class HibernateConfiguration {
    @Autowired
    private Environment environment;
    
//    String db="online";
	String db="offline";
    
    	/*    	
    	 * Edit database infomation in src/main/resource/application.properties
    	 * */
    
    @Bean
    @Primary
    public LocalContainerEntityManagerFactoryBean entityManagerFactory() {
	    LocalContainerEntityManagerFactoryBean entityManagerFactory = new LocalContainerEntityManagerFactoryBean();
	    entityManagerFactory.setDataSource(dataSource());
	    entityManagerFactory.setPackagesToScan(new String[] { "com.cmsoft.dashboard.model" });
	    JpaVendorAdapter vendorAdapter = new HibernateJpaVendorAdapter();
	    entityManagerFactory.setJpaVendorAdapter(vendorAdapter);
	    entityManagerFactory.setJpaProperties(hibernateProperties());
	    return entityManagerFactory;
    }
    
    @Bean
    public LocalSessionFactoryBean sessionFactory() {
        LocalSessionFactoryBean sessionFactory = new LocalSessionFactoryBean();
        sessionFactory.setDataSource(dataSource());
        sessionFactory.setPackagesToScan(new String[] { "com.cmsoft.dashboard.model" });
        sessionFactory.setHibernateProperties(hibernateProperties());
        return sessionFactory;
     }
    
    @Bean
    public DataSource dataSource(){
	    DriverManagerDataSource dataSource = new DriverManagerDataSource();
	    dataSource.setDriverClassName(environment.getProperty("jdbc.driverClassName"));

	    dataSource.setUrl(environment.getProperty("jdbc.url."+db));
	    dataSource.setUsername(environment.getProperty("jdbc.username."+db));
	    dataSource.setPassword(environment.getProperty("jdbc.password."+db));
	    return dataSource;
    }
    
   
    
	 private Properties hibernateProperties() {
	    	   
	     Properties properties = new Properties();
	     properties.put("hibernate.dialect", environment.getRequiredProperty("hibernate.dialect"));
	     properties.put("hibernate.show_sql", environment.getRequiredProperty("hibernate.show_sql"));
	     properties.put("hibernate.format_sql", environment.getRequiredProperty("hibernate.format_sql"));
	     properties.put("hibernate.enable_lazy_load_no_trans", "true");     
	     return properties;        
	 }
           
    @Bean
    public PersistenceExceptionTranslationPostProcessor exceptionTranslation(){
    	return new PersistenceExceptionTranslationPostProcessor();
    }
    
    @Bean
    @Autowired
    public HibernateTransactionManager transactionManager(SessionFactory sessionFactory) {
	    HibernateTransactionManager txManager = new HibernateTransactionManager();
	    txManager.setSessionFactory(sessionFactory);
	    return txManager;
    }
 
}