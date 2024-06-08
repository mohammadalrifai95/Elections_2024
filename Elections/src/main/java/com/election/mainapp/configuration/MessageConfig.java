package com.election.mainapp.configuration;

import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.support.ResourceBundleMessageSource;
import org.springframework.context.annotation.Bean;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.i18n.AcceptHeaderLocaleResolver;
import org.springframework.web.servlet.i18n.LocaleChangeInterceptor;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;
import org.springframework.web.servlet.LocaleResolver;


//@Configuration
public class MessageConfig {//implements WebMvcConfigurer{

	  
//	  @Bean
//	  public LocaleResolver localeResolver() {
//	      SessionLocaleResolver slr = new SessionLocaleResolver();
//	      slr.setDefaultLocale(Locale.US);
//	      //slr.setLocaleAttributeName("session.current.locale");
//	      //slr.setTimeZoneAttributeName("session.current.timezone");
//	      return slr;
//	  }
	  
//	  @Bean
//	  public LocaleChangeInterceptor localeChangeInterceptor() {
//	      LocaleChangeInterceptor localeChangeInterceptor = new LocaleChangeInterceptor();
//	      localeChangeInterceptor.setParamName("language");
//	      //localeChangeInterceptor.setParamName("i18n");
//	      return localeChangeInterceptor;
//	  }
	  	
//	  @Override
//	  public void addInterceptors(InterceptorRegistry registry) {
//	      registry.addInterceptor(localeChangeInterceptor());
//	  }

//	  @Bean("messageSource")
//	  public MessageSource messageSource() {
//	      ResourceBundleMessageSource messageSource =  new ResourceBundleMessageSource();
//	      //messageSource.setBasenames("language/messages");
//	      messageSource.setBasenames("classpath:i18n/messages"); 
//	      messageSource.setDefaultEncoding("UTF-8");
//	      return messageSource;
//	  }
	}