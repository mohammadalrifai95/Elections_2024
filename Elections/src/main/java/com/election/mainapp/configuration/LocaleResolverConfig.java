package com.election.mainapp.configuration;

import java.util.Locale;

import org.springframework.context.MessageSource;
//import org.apache.tomcat.util.descriptor.LocalResolver;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.i18n.AcceptHeaderLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.data.domain.AuditorAware;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;
import org.springframework.validation.beanvalidation.LocalValidatorFactoryBean;

//@Configuration
//@EnableJpaAuditing(auditorAwareRef = "auditorAware")
public class LocaleResolverConfig  implements WebMvcConfigurer{// implements WebMvcConfigurer{
	
	//below files created for purpose of languages
	//1) LocaleResolverConfig
	//2) LocaleConrroller
	//3) messages_ar.properties
	//4) messages_en.properties
	//5) spring.messages.basename=i18n/messages in application.properties
	//6) LanguageFilter
	
//	@Bean
//	public AuditorAware<String> auditorAware(){
//		
//		return new AuditorAwareImpl();
//	}
	
	
	 
	
	
	@Bean
	public LocaleResolver localeResolver() {
	    SessionLocaleResolver slr = new SessionLocaleResolver();
	    slr.setDefaultLocale(Locale.US);
	    return slr;
	}
	
	@Bean
	public LocaleChangeInterceptor localeChangeInterceptor() {
	    LocaleChangeInterceptor lci = new LocaleChangeInterceptor();
	    lci.setParamName("language");
	    return lci;
	}
	
	
	@Override
	public void addInterceptors(InterceptorRegistry registry) {
	    registry.addInterceptor(localeChangeInterceptor());
	}
	
//	@Bean
//	public LocaleResolver localeResolver()  {
//		
//		SessionLocaleResolver sessionLocalResolver = new SessionLocaleResolver();
////		AcceptHeaderLocaleResolver acceptHeaderLocaleResolver = new AcceptHeaderLocaleResolver();
//		sessionLocalResolver.setDefaultLocale(Locale.US);
//		
//		return sessionLocalResolver;		
//	}

//	  @Bean
//	  public LocaleChangeInterceptor localeChangeInterceptor() {
//	      LocaleChangeInterceptor localeChangeInterceptor 
//	                      = new LocaleChangeInterceptor();
//	      //localeChangeInterceptor.setParamName("language");
//	      localeChangeInterceptor.setParamName("i18n"); 
//	      return localeChangeInterceptor;
//	  }
	
//	@Override
//	  public void addInterceptors(InterceptorRegistry registry) {
//      
//		  registry.addInterceptor(localeChangeInterceptor());
//	  
//	  }
//	
//	  @Bean("messageSource")
	  @Bean()
	  public MessageSource messageSource() {
//	      ResourceBundleMessageSource messageSource =  new ResourceBundleMessageSource();
		  ReloadableResourceBundleMessageSource messageSource = new ReloadableResourceBundleMessageSource(); 
//	      messageSource.setBasenames("language/messages");
	      messageSource.setBasenames("classpath:i18n/messages"); 
//	      messageSource.setBasenames("src/main/resources/i18n/messages/messages");
	      //messageSource.setBasenames("classpath:i18n/messages/messages");
//	      messageSource.setBasenames("/messages/messages");
//	      messageSource.setBasenames("i18n/messages"); 
	      messageSource.setDefaultEncoding("UTF-8");
	      return messageSource;
	  }


	  @Override
	  @Bean()
	  public LocalValidatorFactoryBean getValidator() {

		  LocalValidatorFactoryBean bean = new LocalValidatorFactoryBean();
		  
		  bean.setValidationMessageSource(messageSource());
		  
		  return bean;
		  
	  }
	  
	  
	  
	  
}
