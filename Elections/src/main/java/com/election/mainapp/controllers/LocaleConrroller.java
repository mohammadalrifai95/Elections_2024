package com.election.mainapp.controllers;

import java.util.Locale;

import org.springframework.context.MessageSource;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class LocaleConrroller {

	//below files created for purpose of languages
	//1) LocaleResolverConfig
	//2) LocaleConrroller
	//3) messages_ar.properties
	//4) messages_en.properties
	//5) spring.messages.basename=i18n/messages in application.properties
	//6) LanguageFilter
	
	private final MessageSource messageSource;
	
	
	public LocaleConrroller(MessageSource messageSource) {
		this.messageSource= messageSource;
	}
	
	@GetMapping(value = "/locale")
	public String sayHello() {
		return messageSource.getMessage("common.hello", null, LocaleContextHolder.getLocale() );
	}

//	@GetMapping(value = "/locale_with_header")
	@RequestMapping(value = "/locale_with_header", method = RequestMethod.GET)
	public String sayHelloWithHeader(@RequestHeader(name = "Accept-Language", required = false) Locale Locale)  {
//		return messageSource.getMessage("common.hello", null, LocaleContextHolder.getLocale() );
		return "Yesw";
	}
	
	
}


