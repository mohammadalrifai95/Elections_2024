//package com.election.mainapp.security;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.boot.autoconfigure.info.ProjectInfoProperties.Build;
//import org.springframework.context.annotation.Bean;
//import org.springframework.context.annotation.Configuration;
//import org.springframework.security.access.hierarchicalroles.RoleHierarchy;
//import org.springframework.security.authentication.AuthenticationProvider;
//import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
//import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
//import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
//import org.springframework.security.config.annotation.web.builders.HttpSecurity;
//import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
//import org.springframework.security.core.userdetails.User;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import org.springframework.security.core.userdetails.UsernameNotFoundException;
//import org.springframework.security.crypto.bcrypt.BCrypt;
//import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
//import org.springframework.security.crypto.password.NoOpPasswordEncoder;
//import org.springframework.security.crypto.password.PasswordEncoder;
//import org.springframework.security.provisioning.InMemoryUserDetailsManager;
//import org.springframework.security.provisioning.UserDetailsManager;
//import org.springframework.security.web.SecurityFilterChain;
//import org.springframework.security.web.access.expression.DefaultWebSecurityExpressionHandler;
////import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.web.context.AbstractSecurityWebApplicationInitializer;
//import org.springframework.security.web.util.matcher.AntPathRequestMatcher;
//
//import com.election.mainapp.voting.daoI.UserDaoI;
//import com.election.mainapp.voting.data.UserData;
//
////import jakarta.servlet.FilterChain;
////
////@Configuration
////@EnableWebSecurity
////@EnableMethodSecurity
//public class SpringSecurityConfigDemo { //extends AbstractSecurityWebApplicationInitializer{
//
//	//extends WebSecurityConfigurerAdapter{
//	//extends AbstractSecurityWebApplicationInitializer
////extends WebSecurityConfigurerAdapter{
//
////	@Autowired
////	UserDetailsServiceImpl userDetailsServiceImpl ;
////	
////	@Autowired
////	UserDaoI userDaoRepo;
//	
////	public SpringSecurityConfigDemo() {
////	}
//	
//	
//	
//	//we use UserDetailsService method instead of configure(AuthenticationManagerBuilder auth)
////	  @Bean
////	  public UserDetailsService userDetailsService() {
//
//	
//	
//		//	UserDetails admin = User.withUsername("admin")
//		//	.password("admin")
//		//	.roles("ADMIN")
//		//	.build();
//		//
//		//UserDetails user = User.withUsername("user")
//		//		.password("user")
//		//		.roles("USER") 
//		//		.build();
//		//
//		//return new InMemoryUserDetailsManager(admin, user);
//		//	UserDetailsService userDetailsServiceImpl = new  UserDetailsServiceImpl(); 
//	
//	
//	
//	
////		  AuthenticationManagerBuilder auth;
//		  
////		  auth.inMemoryAuthentication()
////		  .withUser("")
////		  .password("")
////		  .roles("");
//		  
////		  new UserDetailsImpl();
////		  return new UserDetailsService() {
////	           
////			    @Override
////	            public UserDetails loadUserByUsername(String username) {
////	            	UserData userData = null;
////	            	userData = userDaoRepo.findByUserName(username);
////	            	
////	            	if(userData !=null) {
////	            		return new UserDetailsImpl(userData);	
////	            	}else {
////	            		throw new UsernameNotFoundException("User not found");
////	            		//.orElseThrow(() -> new UsernameNotFoundException("User not found"));
////	            	}
////	            }
////	        };
//		  
////	    return new  UserDetailsServiceImpl();   
////	  }
//
// 
//	
//	  
////	  @Bean 
////	  public PasswordEncoder getPassEncoded() { 
////		  return NoOpPasswordEncoder.getInstance();
////		  
//////		  return new BCryptPasswordEncoder();
////	  }
//	  
//    
//	  
// 
//	    	
//	    	
//	    	//CONSIDER THIS START *****************
////    		http
////			  .csrf().disable()
////			  .authorizeHttpRequests()
////			  .requestMatchers("/admin" , "/user").permitAll()
////			  .and()
////			  .authorizeHttpRequests()
////			  .requestMatchers("/", "/home").permitAll()  
////			  .and().formLogin().loginPage("/");  
//    		
//	    	//CONSIDER THIS ENDS *****************
//    		
////    		http.csrf()
////            .disable()
////            .authorizeRequests()
////            .requestMatchers("/admin" , "/user").permitAll()
////            //.hasRole("ADMIN")
////            .requestMatchers("/anonymous*")
////            .anonymous()
////            .requestMatchers("/login*")
////            .permitAll()
////            .anyRequest()
////            .authenticated()
////            .and()
//    		
//    		
//	    	
////	    	 http
////	         .authorizeRequests()
////	             .anyRequest().authenticated()
////	             .and()
////	         .formLogin()
////	             .and()
////	         .httpBasic();
//	    	 
////	    	   http
////	            .authorizeRequests()
////	                .anyRequest().authenticated()
////	                .and()
////	            .httpBasic();
//    		
////    		return http.build();
// 
////	    }
//	    
//		
//////	    @Override    
////	    protected void configure(HttpSecurity http) throws Exception {    
//////	            
//////	          http.authorizeRequests().  
//////	          requestMatchers("/home", "/").permitAll()     
//////	          //.requestMatchers("/admin").authenticated()  
//////	          .requestMatchers("/admin").hasRole("ADMIN")     
//////	          //.requestMatchers("/user").hasRole("USER")   
//////	          .and()  
//////	          .formLogin()  
//////	          .loginPage("/login")  
//////	          .and()  
//////	          .logout()  
//////	          .logoutRequestMatcher(new AntPathRequestMatcher("/logout")); 
////	          
////		      http.authorizeRequests().  
////		      requestMatchers("/home", "/login", "/").permitAll()     
////		      //.requestMatchers("/admin").authenticated()   
////		      .requestMatchers("/admin").hasRole("ADMIN")     
////		      .requestMatchers("/user").hasRole("USER")   
////		      .and()  
////		      .formLogin()  
////		      .loginPage("/login")  
////		      .and()  
////		      .logout()  
////		      .logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
////		      
////	    }   
////		
////		
////	    
//	    
//	  
////	    @Bean
////	    public AuthenticationProvider autheticationProvider() {
////	    	
////	    	DaoAuthenticationProvider daoAuthenticationProvider = new DaoAuthenticationProvider();
////	    	daoAuthenticationProvider.setUserDetailsService(userDetailsServiceImpl); 
////	    	daoAuthenticationProvider.setPasswordEncoder(getPassEncoded());
////
////	    	return daoAuthenticationProvider;
////		}
////  
//
//	
//	
//	//Authentication
////	@Bean
////	public UserDetailsService userDetailsService() {
////		
////		
////		UserDetails admin = User.withUsername("admin")
////				.password("admin")
////				.roles("ADMIN")
////				.build();
////		
////	
////		UserDetails user = User.withUsername("user")
////				.password("user")
////				.roles("USER") 
////				.build();
////		
////		
////		return new InMemoryUserDetailsManager(admin, user);
////		
//////	  return new  UserDetailsServiceImpl();   
////	}
//	
////	@Bean 
////	public  InMemoryUserDetailsManager userDetailsService2() {
////		
////		UserDetails admin = User.withUsername("admin")
////				.password("admin")
////				.roles("ADMIN")
////				.build();
////		
////	
//////		UserDetails user = User.withUsername("user")
//////				.password("user")
//////				.roles("USER") 
//////				.build();
////		
////		return new InMemoryUserDetailsManager(admin);
////		
////	}
////	
//    
////	  @Bean 
////	  public PasswordEncoder getPassEncoded() { 
////		  return NoOpPasswordEncoder.getInstance();
//		  
////		  return new BCryptPasswordEncoder(); 
////	  }
//
////    @Override    
////    protected void configure(HttpSecurity http) throws Exception {    
////          
////	      http.authorizeRequests().  
////	      requestMatchers("/home", "/login", "/Login", "/").permitAll()      
////	      .requestMatchers("/admin").hasRole("ADMIN")     
////	      .requestMatchers("/user").hasRole("USER")   
////	      .and()  
////	      .formLogin()  ; 
////	      .loginPage("/login")  
////	      .and()  
////	      .logout()  
////	      .logoutRequestMatcher(new AntPathRequestMatcher("/logout"));
////	      
////    }   
//	
//	  //let Spring Security allow the use for hasPermission in the JSP page?
////	  protected Class<?>[] getRootConfigClasses() {
////		    return new Class[] {
////		    		SpringSecurityConfigurer.class,
////		    };
////		  }
//
//
////	@Bean
////	protected void Configure(HttpSecurity http) throws Exception{
////		
////		http.authorizeRequests()
////		.anyRequest().authenticated()
////		.and()
////		.formLogin()
////		.loginPage("/login")
////		.permitAll();
////		
////	}
//	
//    
////  @Bean
////  public InternalResourceViewResolver jspViewResolver(){
////      final InternalResourceViewResolver viewResolver = new InternalResourceViewResolver();
////      //viewResolver.setViewClass(JstlView.class);
////      viewResolver.setPrefix("/WEB-INF/jsp/");
////      viewResolver.setSuffix(".jsp");
////      //viewResolver.setViewNames("jsp/*");
////      return viewResolver;
////  }
//  
////  @Resource
////  protected SpringTemplateEngine springTemplateEngine;
////  
////  @Bean
////  public ThymeleafViewResolver thymeleafViewResolver(){
////      final ThymeleafViewResolver viewResolver = new ThymeleafViewResolver();
////      //viewResolver.setViewNames(new String[] {"thyme/*"});
////      //viewResolver.setExcludedViewNames(new String[] {"jsp/*"});
////      viewResolver.setTemplateEngine(springTemplateEngine);
////      viewResolver.setCharacterEncoding("UTF-8");
////      return viewResolver;
////  }
//	
//
//}
