package com.election.mainapp;

import java.util.logging.Logger;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.SpringBootConfiguration;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;


@SpringBootApplication
//@SpringBootConfiguration
//@EnableAutoConfiguration
//@ComponentScan
public class ElectionsApplication {

	public static void main(String[] args) {
		SpringApplication.run(ElectionsApplication.class, args);
		
//		StandardEnvironment environment = new StandardEnvironment();
//        new SpringApplicationBuilder()
//            .sources(SpringBootJarResourcesDemoApplication.class)
//            .environment(environment)
//            .resourceLoader(new JarResourceLoader(environment, "resources.extract.dir"))
//            .build()
//            .run(args);
	}
	
	
	@Bean
	Logger logger() {
		return 	Logger.getLogger(ElectionsApplication.class.getName());
	} 
	

}
