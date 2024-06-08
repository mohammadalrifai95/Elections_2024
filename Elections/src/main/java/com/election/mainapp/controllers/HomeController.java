package com.election.mainapp.controllers;


import java.awt.image.BufferedImage;
import java.awt.image.WritableRaster;
import java.io.*;
import java.lang.reflect.InvocationTargetException;
import java.net.http.HttpRequest;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Optional;
import java.util.Scanner;
import java.util.TreeMap;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.client.RestTemplate;


import com.election.mainapp.voting.data.CandidateData;
import com.election.mainapp.voting.data.ConstituencyData;
import com.election.mainapp.voting.data.GenericDateAndTimeData;
import com.election.mainapp.voting.data.GovernorateData;
import com.election.mainapp.voting.data.RegionData;
import com.election.mainapp.voting.data.UserData;
import com.election.mainapp.voting.data.VoterData;
import com.election.mainapp.voting.service.GenericService;
import com.election.mainapp.voting.service.VoterService;
import com.election.mainapp.voting.serviceI.CandidateServiceI;
import com.election.mainapp.voting.serviceI.GenericServiceI;
import com.election.mainapp.voting.serviceI.VoterServiceI;
import com.google.api.services.translate.Translate;
import com.google.api.services.translate.model.TranslationsListResponse;
import com.google.api.services.translate.model.TranslationsResource;
import java.awt.image.*;
import java.util.logging.Level;
//import ch.qos.logback.classic.Logger;
import java.util.logging.Logger;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

//import jakarta.annotation.security.RolesAllowed;
//import jakarta.mail.Session;
//import jakarta.servlet.http.HttpServletRequest;
//import jakarta.servlet.http.HttpSession;
//import jakarta.ws.rs.HttpMethod;
import javassist.Translator;

import com.election.mainapp.constant.GlobalConstant;
import com.election.mainapp.constant.GlobalMessage_AR;
import com.election.mainapp.enums.ConstituencyEnum;
import com.election.mainapp.enums.GovernorateEnum;
import com.election.mainapp.generic.StringUtility;
import com.election.mainapp.generic.interfaces.FooExtendedI;
import com.election.mainapp.voting.data.AreaData;
//import org.springframework.security.core.authority.SimpleGrantedAuthority;
//import org.springframework.security.core.context.SecurityContextHolder;
//import org.springframework.security.core.userdetails.UserDetails;
//import org.springframework.security.core.userdetails.UserDetailsService;
//import com.aspose.ocr.AsposeOCR;
//import com.aspose.ocr.Language;
//import com.aspose.ocr.License;

import java.io.*;
import java.nio.file.*;
 
import org.springframework.web.multipart.MultipartFile;
import java.nio.file.Path;
import java.nio.file.Paths;
 
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
//import org.json.JSONArray;


@Controller
//@EnableWebMvc
public class HomeController {

	@Autowired
	Logger logger; //= Logger.getLogger(HomeController.class.getName());
	
	@Autowired
	GenericServiceI genericService;
	
	@Autowired
	CandidateServiceI candidateService;

	@Autowired
	VoterServiceI voterService;
	
//	@Autowired
//	UserDetailsService userDetailsServiceImpl ;
//	UserDetailsServiceImpl userDetailsServiceImpl ;
	
	@GetMapping(value = "/english") 
	public String home_en(HttpServletRequest request, String...language) {

		if(language != null && StringUtility.isNotEmpty(language[0])) {
			HttpSession session = request.getSession();
			session.setAttribute("language", language[0]);
		}
		
		return "home_en"; 
	
	}
	 
	//@PreAuthorize("hasAuthority('ROLE_ADMIN')") 
	//@RequestMapping(value = "/", method = RequestMethod.GET)
	//@RequestMapping(value = "/login", method = RequestMethod.GET)  
	//@ResponseBody
//	@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")
	@GetMapping(value = "/") 
//	@RequestMapping(value = "/", method = RequestMethod.POST)
	//public String login(HttpServletRequest request, Boolean...fetchCandidateListStatus) {
		public String home(HttpServletRequest request, String...language) {

		if(language != null && StringUtility.isNotEmpty(language[0])) {
			HttpSession session = request.getSession();
			session.setAttribute("language", language[0]);
			return "home_en"; 
		}
		
		
		List<CandidateData>  cDataList = genericService.findAll(0, 0);
		//List<CandidateData>  candidateDataList = genericService.findAllCandidateData();
		int index = 1;
		
		//I want to return the last 4 elements
		String base64Encoded = null;
		byte[] encodeBase64 = null;
		List<CandidateData> candidateDataList = null;
//		2024
		if(cDataList!=null && cDataList.size()>3) {
			candidateDataList = cDataList.subList(cDataList.size()-4, cDataList.size());			
		}
		if(candidateDataList!=null) {	
		
		for (Iterator iterator = candidateDataList.iterator(); iterator.hasNext();) {
			CandidateData cData = (CandidateData) iterator.next();
			cData.setNumberOfVotes(voterService.findNumberOfVotesByCandidateId(cData.getId()));
			cData.setIndex(index++);
			
			encodeBase64 = Base64.encodeBase64(cData.getImageData());
			base64Encoded = null;
			try {
				if(encodeBase64!=null) {
					base64Encoded = new String(encodeBase64, "UTF-8");					
				}
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			cData.setBase64image(base64Encoded);
		}
}
		
		request.setAttribute("candidateDataList", candidateDataList);
		
//		String selectedLanguage (String)session.getAttribute("userName") 
//		if(language != null && StringUtility.isNotEmpty(language[0])) {
//			HttpSession session = request.getSession();
//			session.setAttribute("language", language[0]);
//			return "home_en"; 
//		}
		
		
		return "home";     
	}
	
	 
	@GetMapping(value = "/logoutPage")   
	public String logoutPage(HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		invalidateSession(session);
 
		return "login";  
	}


	private void invalidateSession(HttpSession session) {
		session.invalidate();
	}
	
	

	@GetMapping (value = "/signin")  
	//public ModelAndView login(@RequestParam("userName")  String userName, @RequestParam("password") String password , HttpServletRequest request,  String ... alredyLoggedin) {
		public ModelAndView signin(UserData usrdta, HttpServletRequest request, String ... alredyLoggedin) {
		
		ModelAndView mv= new ModelAndView(); 
	
		
		Long lastNumberOf10Digit = new Long("9999999999");
		if(usrdta != null && usrdta.getSsn()!=null && (usrdta.getSsn()>lastNumberOf10Digit)) {
			mv.addObject("errorLoginMessage", "الرجاء ادخال اسم مستخدم وكلمه مرور ورقم وطني صحيحات");
			mv.setViewName("login");
			
		}

		if(usrdta == null  ||  StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ||  usrdta.getSsn()==null ) {
			
			//mv.addObject("errorLoginMessage", "Please enter username and password");
			mv.addObject("errorLoginMessage", "الرجاء ادخال اسم المستخدم وكلمه المرور والرقم الوطني");
			mv.setViewName("login");
			return mv;
		}
		
		
		
		
		
		
		logger.info("Inside signin ...by logger");
		HttpSession session = request.getSession();
		UserData userData = null;
		
//		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
//			if(usrdta!=null) {
				//assignRoleToModelAndView(mv, usrdta.getRole());
				//session.setAttribute("role", usrdta.getRole());
//			}
//			return mv;
//		}
		
		//userData = genericService.findUser(usrdta);
		userData = genericService.findUserByUsernmePassAndSsn(usrdta);
		
		session.setAttribute("userData", userData);
		if(userData != null ) {
			session.setAttribute("userId", userData.getId());
		}
		
				
		if(userData == null &&(
				(usrdta ==null)
				||
				(StringUtility.isEmpty(usrdta.getUserName()))
				||
				(StringUtility.isEmpty(usrdta.getPassword()))
				 ||  
				(StringUtility.isEmpty(usrdta.getSsnStr()))
				)){
			//Incorrect user and pass entered
			mv.addObject("errorLoginMessage", "الرجاء ادخال اسم مستخدم وكلمه مرور ورقم وطني صحيحات");
			mv.setViewName("login");
			
			if(session!= null) {
				String language = (String)session.getAttribute("language");
				if(StringUtility.isNotEmpty(language) && language.equals(GlobalConstant.ENGLISH)) {
					mv.addObject("errorLoginMessage", "Please enter username and password");
				}
			}
			
		}else if(userData == null ) {
			//Incorrect user and pass entered
			mv.addObject("errorLoginMessage", GlobalMessage_AR.WRONG_USER_PASS_MESSAGE_AR);
			if(session!= null) {
				String language = (String)session.getAttribute("language");
				if(StringUtility.isNotEmpty(language) && language.equals(GlobalConstant.ENGLISH)) {
					mv.addObject("errorLoginMessage", "Username or password is incorrect, Please enter valid username and password");
				}
			}
			
			mv.setViewName("login");
			
		}
		else {
			session.setAttribute("userName", userData.getUserName());
			session.setAttribute("password", userData.getPassword());
			
			populateListOfCountry(request);
			populateListOfCity(mv, request);
			//mv.setViewName("home2"); 
			
			VoterData voterData =   userData.getVData();
			CandidateData candidateData =   userData.getCandidateData();
			if(candidateData==null && voterData!=null) {
				candidateData=voterData.getCandidateData();
			}
			
			
			
			GovernorateData governorateData = null;
			ConstituencyData constituencyData = null;
			List<CandidateData> candidateDataList = null;
			List<VoterData> voterDataList = null;
			List<VoterData> voterDataByCandidateIdList = null;
			//voter is signing in
			if(voterData != null) {
				mv.setViewName("welcomevoter");
				governorateData = voterData.getGovernorateData();
				constituencyData = voterData.getConstituencyData();
				request.setAttribute("voterData", voterData);
				session.setAttribute("voterData", voterData);
				
				voterData.getGovernorateData();
				voterData.getConstituencyData();
				candidateDataList = candidateService.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
				session.setAttribute("candidateDataList", candidateDataList);
				request.setAttribute("candidateDataList", candidateDataList);
				session.setAttribute("voterData", voterData); 
//				for (Iterator iterator = candidateDataList.iterator(); iterator.hasNext();) {
//					CandidateData candidateData2 = (CandidateData) iterator.next();
//					
//				}
			//candidate is signing in
			}else if(candidateData != null) {
				mv.setViewName("welcomecandidate");
				governorateData = candidateData.getGovernorateData();
				constituencyData = candidateData.getConstituencyData();
				 
				Integer numberOfVotes = voterService.findNumberOfVotesByCandidateId(candidateData.getId());
				
				request.setAttribute("numberOfVotes", numberOfVotes);
				session.setAttribute("numberOfVotes", numberOfVotes);
				
				request.setAttribute("candidateData", candidateData);
				session.setAttribute("candidateData", candidateData);
				
				candidateData.getGovernorateData();
				candidateData.getConstituencyData();
				voterDataList = voterService.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
				voterDataByCandidateIdList = voterService.findVoterDataListByCandidateId(candidateData.getId()) ;
				//session.setAttribute("voterDataList", voterDataList);
				session.setAttribute("voterDataByCandidateIdList", voterDataByCandidateIdList);
				
				
				if(candidateData.getImageData()!=null) {
//					byte[] bytes = candidateData.getImageData()
//					candidateData.setFileName(fileData.getOriginalFilename());
//					candidateData.setImageFile(candidateData.getImageData());
		            byte[] encodeBase64 = Base64.encodeBase64(candidateData.getImageData());
		            String base64Encoded = null;
					try {
						base64Encoded = new String(encodeBase64, "UTF-8");
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		            candidateData.setBase64image(base64Encoded);	
				}
				
				
			//Neither voter nor candidate is sign in TOBE implemented 	
			}else {
				mv.setViewName("welcomevoter");
			}
			

			request.setAttribute("userData", userData);
			session.setAttribute("userData", userData);
			request.setAttribute("governorateData", governorateData);
			request.setAttribute("constituencyData", constituencyData);
			request.setAttribute("candidateData", candidateData);
			
			//mv.setViewName("home2");
		}
		
		
		return mv;
	}
	
//	@ResponseBody 
	//@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")
	@GetMapping (value = "/login")  
	//public ModelAndView login(@RequestParam("userName")  String userName, @RequestParam("password") String password , HttpServletRequest request,  String ... alredyLoggedin) {
		public ModelAndView login(UserData usrdta, HttpServletRequest request,  String ... alredyLoggedin) {
		
		logger.info("Inside login ...by logger"); 
		HttpSession session = request.getSession();
	     if(StringUtility.isNotEmpty((String)request.getParameter("alredyLoggedin")) || 
	    		(alredyLoggedin != null && StringUtility.isNotEmpty(alredyLoggedin[0]) 
	    		&& alredyLoggedin[0].equals("Yes"))) {
	    	 
	    	 usrdta.setUserName((String)session.getAttribute("userName") );
	    	 usrdta.setPassword((String)session.getAttribute("password"));
	     }

	     ModelAndView mv= new ModelAndView();
	     //HttpSession session = request.getSession();
	     
	     String language_selected = GlobalConstant.EMPTY_STRING[0]; 
	     if(session != null && session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER) != null)
	     language_selected = (String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);
	     
//			if(StringUtility.isNotEmpty(language)) {
//				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, language);				
//			}else {
//				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, GlobalConstant.LAUNGAUE_ENGLISH);
//			}
			mv.addObject(GlobalConstant.LAUNGAUE_SMALL_LETTER, language_selected);
			//String returnPage = "login";
			String returnPage = "home";
//			if(language_selected.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {	
//				returnPage="login";
//			}else{
//				returnPage="login";
//				//returnPage="login_arabic"; 
//			}
//	     
			//lambdaExpressionTest();
		
		UserData userData = null;
		if(alredyLoggedin == null) {
		//mv.addObject("errorLoginMessage", "");
		
		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
			//Username and password left empty
			//session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);
			mv.setViewName(returnPage);
			if(language_selected.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {
				mv.addObject("errorLoginMessage", "Please enter Username and Password");
			}else{
				mv.addObject("errorLoginMessage", GlobalMessage_AR.EMPTY_USER_PASS_MESSAGE_AR);
			}
			
			//getAuthority();
			if(usrdta!=null) {
				assignRoleToModelAndView(mv, usrdta.getRole());
				session.setAttribute("role", usrdta.getRole());
			}

			return mv;
		}
		
		
		userData = genericService.findUser(usrdta);
		if(userData == null ) {
			//Incorrect user and pass entered
			mv.setViewName(returnPage);
				mv.addObject("errorLoginMessage", GlobalMessage_AR.WRONG_USER_PASS_MESSAGE_AR);
				
				if(session!= null) {
					String language = (String)session.getAttribute("language");
					if(StringUtility.isNotEmpty(language) && language.equals(GlobalConstant.ENGLISH)) {
						mv.addObject("errorLoginMessage", "Username or password is incorrect, Please enter valid username and password");
					}
				}
				
			
		}
		else {
			session.setAttribute("userName", userData.getUserName());
			session.setAttribute("password", userData.getPassword());
			
			populateListOfCountry(request);
			populateListOfCity(mv, request);
			
			//mv.setViewName("home2");
			mv.setViewName("home");
		}
		
		}else {
			System.out.println(session.getAttribute("userName"));
			populateListOfCountry(request);
			populateListOfCity(mv, request);
			mv.setViewName("home2");
		}
		
		if(userData==null) {
			userData = (UserData) session.getAttribute("userData");
		}
		if(session != null) {
			session.setAttribute("userData" , userData);
		}
		
		
		if(userData!=null) {
			assignRoleToModelAndView(mv, userData.getRole());
			session.setAttribute("role", userData.getRole()); 
		}
		
		return mv;
	}


	private void assignRoleToModelAndView(ModelAndView mv, String role ) {
			//consumeRestAPIUsingRestTemplateTest(userData);  			
				mv.addObject("role", role); 
				
	}
	
	@GetMapping (value = "/callBusinessApp")
	public ModelAndView callBusinessApp(HttpServletRequest request){
		
		ModelAndView mv = new ModelAndView(); 
		HttpSession session = request.getSession(); 
		UserData userData = (UserData) session.getAttribute("userData");

		  //Call(consume) REST API
		  String uri = "http://localhost:8081//getData/"+userData.getId();  
		  RestTemplate restTemplate = new RestTemplate();
		  
		  String businessApp = restTemplate.getForObject(uri, String.class);
		  
		  
		  session.setAttribute("businessApp", businessApp);
		  
//		  UserData ud = restTemplate.postForObject(uri, usrdta, UserData.class);
//		  UserData ud  = restTemplate.exchange(uri, HttpMethod.PUT, usrdta, UserData.class, 1);
		  
		  if(userData !=null)
		  assignRoleToModelAndView(mv, userData.getRole());
		  session.setAttribute("role", userData.getRole()); 
		  
		  
		  mv.setViewName("home2"); 
		  
		  populateListOfCountry(request);
		  populateListOfCity(mv, request);
		  
		  return mv; 
		
	}
	
	
	
//	@ResponseBody   
//	@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")	
	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(HttpServletRequest request) {
		
		//getAuthority();
		
		//populateListOfCountry(request);
		
		return "home2";
	}
	
//	@RolesAllowed("ROLE_ADMIN")
//	@PreAuthorize("hasAuthority('ROLE_ADMIN')  or hasAuthority('ROLE_USER') ")
//	@ResponseBody   
//	@PreAuthorize("hasAuthority('ROLE_ADMIN') ")    
	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String admin(HttpServletRequest request) {

		//Use spring security for admin page 
		//if(!isSessionValid(request, mv)) {
			//return mv;
		//}
			
		return "admin";
	}
	
	
//	@RolesAllowed("ROLE_ADMIN")
//	@ResponseBody 
//	@PreAuthorize("hasAuthority('ROLE_USER') ")
//	@PreAuthorize("hasAuthority('ROLE_ADMIN') ") 
	@RequestMapping(value = "/user", method = RequestMethod.GET)
	public String getUser(HttpServletRequest request) {
		
		//getAuthority();
		//populateListOfCountry(request);
		//String selectedLanguageJsp = returnLanguageSelected(request);
		
		return "user";
	}	
	
	
	
	@RequestMapping(value = "/languageChanged", method = RequestMethod.GET)
	public String languageChanged(String selectedLanguage, HttpServletRequest request) {
		
		populateListOfCountry(request);

	     HttpSession session = request.getSession();
			if(StringUtility.isNotEmpty(selectedLanguage)) {
				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, selectedLanguage);				
			}else {
				session.setAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER, GlobalConstant.LAUNGAUE_ENGLISH);
			}
			//mv.addObject(GlobalConstant.LAUNGAUE_SMALL_LETTER, session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER));

		if(StringUtility.isNotEmpty(selectedLanguage) && selectedLanguage.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {
			return "login";				
		}else {
			return "login_arabic";				
		}
		
	}


	


	private String returnLanguageSelected(HttpServletRequest request) {
		logger.info("................inside returnLanguageSelected....................");
		HttpSession session = request.getSession();
		if(session != null ) {
			String language = (String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);			
		
			if(language != null && language.equals(GlobalConstant.LAUNGAUE_ARABIC)) {
				return "login_arabic";				
			}else {
				return "login";				
			}
		}
		return "login";
	}
	




	@RequestMapping(value = "/contactUs", method = RequestMethod.GET)
	public ModelAndView contactUs( HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		
		if(!isSessionValid(request, mv)) {
			
			return mv;
		}
		
		
		getListOfCandidateWithPagination(request, mv);
		
		return mv;
	}


	private boolean isSessionValid(HttpServletRequest request, ModelAndView mv) {
		
		HttpSession session = request.getSession();
		String userName = (String)session.getAttribute("userName"); 
		if(session == null || StringUtility.isEmpty(userName) ) { 

			mv.setViewName("login");
			mv.addObject("errorLoginMessage", "You can not navigate to this screen, please login with your credential first");
			
			return false;
		}
		

		
		return true;
	}





	private void getListOfCandidateWithPagination(HttpServletRequest request, ModelAndView mv) {
		String spageid=request.getParameter("page");
		int pageid = 0, total = 0;
		
		if(spageid !=null) {
		pageid=Integer.parseInt(spageid);
		total=5;  
		if(pageid==1){}  
		else{  
		    pageid=pageid-1;  
		    pageid=pageid*total+1;  
		}  
		}
	
		//Optional<CandidateData> candidateData = genericService.findaCandidateData(pageid, total, 1);
		List<CandidateData>  candidateDataList = genericService.findAll(pageid, total);
		
		
		
		mv.addObject("candidateDataList", candidateDataList);
		mv.setViewName("contactus");
	}
	
	
	@RequestMapping(value = "/home2", method = RequestMethod.GET)
	public String home2( HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		String userName = (String)session.getAttribute("userName");
		String password= (String)session.getAttribute("password");
		
		System.out.println("userName = " +userName + "  password = "+ password);
		
		ModelAndView  mv = new ModelAndView();
		
		if(!isSessionValid(request, mv)) {
			
			return mv.getViewName();  
		}
		
		
		return "home2";
	}
	
	
	
	private void printThing(FooExtendedI mfI) {
		System.out.println("printThing called **");
		mfI.print();
	}
	

	
 
	
	
	
	//@RolesAllowed("ROLE_USER")
	//@ResponseBody
//	@PreAuthorize("hasAuthority('ROLE_USER') ") 
//	@RequestMapping(value = "/user", method = RequestMethod.GET)
//	public String user(HttpServletRequest request) {
//		
//		//getAuthority();
//		
//		//populateListOfCountry(request);
//		//String selectedLanguageJsp = returnLanguageSelected(request);
//
//		return "user";	
//	}
	

	
	@RequestMapping(value = "/findAllConstituencyByGovId", method = RequestMethod.GET)
	public ModelAndView findAllConstituencyByGovId(Long governorateId, HttpServletRequest request){
		ModelAndView mv= new ModelAndView();
		
		populateListOfCountry(request);
		populateListOfCity(mv, request, governorateId );
		populateListOfConstituencyByGovId(governorateId, mv, request); 
		
		mv.setViewName("home2");
		
		
		HttpSession session = request.getSession();
		String role= (String) session.getAttribute("role");
		assignRoleToModelAndView(mv, role);
		
		return mv;
	}
	
	
	
	@RequestMapping(value = "/findAllConstituencyByGovId2", method = RequestMethod.GET)
	public ModelAndView findAllConstituencyByGovId2(Long governorateId,String screen, HttpServletRequest request){
		ModelAndView mv= new ModelAndView();
		
		populateListOfCountry(request);
		populateListOfCity(mv, request, governorateId );
		populateListOfConstituencyByGovId(governorateId, mv, request);
		
		mv.setViewName(screen);
//		CityLable
		
		HttpSession session = request.getSession();
		String role= (String) session.getAttribute("role");
		assignRoleToModelAndView(mv, role);
		
		return mv;
	}
	
	




	private void populateListOfConstituencyByGovId(Long governorateId, ModelAndView mv, HttpServletRequest request) {
		
		List<ConstituencyData>  constituencyDataList= genericService.findListOfConstituencyByGovId(governorateId);
		mv.addObject("constituencyDataList", constituencyDataList);
		
		HttpSession session = request.getSession();
		session.setAttribute("constituencyDataList", constituencyDataList);
		
	}


	private void populateListOfCity(ModelAndView mv, HttpServletRequest request, Long ... governorateId) { 
		
		//ArrayList<String> listArea = new ArrayList<>();
		List<GovernorateData>  governorateDataList = genericService.findAllGovernorateDataList();
		
		String selectedGovernorate = null;
		if(governorateId!=null && governorateId.length>0 && governorateId[0] != null) {   
			for (Iterator iterator = governorateDataList.iterator(); iterator.hasNext();) {
				GovernorateData governorateData = (GovernorateData) iterator.next();
				if(governorateData.getId()==governorateId[0]) {
					governorateData.setSelectedItem(GlobalConstant.TRUE_FIRST_CAPITAL);
					selectedGovernorate = governorateData.getName(); 
				}
			}
		}
		
		if(selectedGovernorate !=null) {
			mv.addObject("CityLable", "City"); 
			mv.addObject("selectedGovernorate", selectedGovernorate);
		}
		
		mv.addObject("governorateDataList", governorateDataList);
		HttpSession session = request.getSession();
		session.setAttribute("governorateDataList", governorateDataList);
		
	}

	
	private void populateListOfCountry(HttpServletRequest request) {
	
		String[] countryCodes = Locale.getISOCountries();
        Map<String, String> mapCountries = new TreeMap<>();
   	 
        for (String countryCode : countryCodes) {
            Locale locale = new Locale("", countryCode);
            String code = locale.getCountry();
            String name = locale.getDisplayCountry();
            mapCountries.put(code, name);
        }
 
        request.setAttribute("mapCountries", mapCountries);        
        
	}




	private void consumeRestAPIUsingRestTemplateTest(UserData userData) {

		
		  //Call(consume) REST API
		  String uri = "http://localhost:8080//getData/"+userData.getId();
		  RestTemplate restTemplate = new RestTemplate();
		  
		  UserData ud = restTemplate.getForObject(uri, UserData.class);
//		  UserData ud = restTemplate.postForObject(uri, usrdta, UserData.class);
//		  UserData ud  = restTemplate.exchange(uri, HttpMethod.PUT, usrdta, UserData.class, 1);

		  
		  if(ud!=null) {
			  System.out.println("User FirstName: " + ud.getFirstName());
			  System.out.println("User Email: " + ud.getEmail());
		  }
		
	}





	private void lambdaExpressionTest() {

		//used of lambda expression
		 List<String> list = Arrays.asList("jai", "adithya", "raja");
	      list.stream().map( s -> s +  " - " + s.toUpperCase()).forEach(s -> System.out.println(s));
		
		//used of lambda expression
	      FooExtendedI mfI = () -> {
			System.out.println("Hello ");
			System.out.println("Before 1/0");
			System.out.println("Before 1/0");
			System.out.println("Before 1/0");
//			System.out.println(1/0);
//			System.out.println("After 1/0");
		};
//		printThing(mfI);
		mfI.print();
		
		
		
	}





	@RequestMapping("/userRegistration")
	@ResponseBody
	public List<String> userRegistration(UserData usrdta, HttpServletRequest request) {


		List<String> messageList = new ArrayList<String>();
		
		HttpSession session = request.getSession();
		String language = "";
		if(session != null && StringUtility.isNoneEmpty((String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER))){
			language =  (String)session.getAttribute(GlobalConstant.LAUNGAUE_SMALL_LETTER);	
		}

		
		if(StringUtility.isEmpty(usrdta.getUserName()) || StringUtility.isEmpty(usrdta.getPassword()) ) {
			messageList.add("Failed_Registration");
			
			if(language.equals(GlobalConstant.LAUNGAUE_ENGLISH)) {
				messageList.add("Please fill all below required fields to complete registration.");				
			}else {
				messageList.add(GlobalMessage_AR.INCOMPLETE_REGISTRATION_MESSAGE_AR);				
			}
			
			return messageList;
		}
		
		
		genericService.saveUser(usrdta);
		
		messageList.add(usrdta.getUserName());
		messageList.add(usrdta.getPassword());
		messageList.add("You have Successfully registered, you now can sign in with your credential");
		
		return messageList;
	}
	
	
	
	@RequestMapping("/welcome")
	public ModelAndView welcome(Map<String, Object> model, HttpServletRequest request) { 
		ModelAndView mv = new ModelAndView();

		ArrayList<String> listArea = new ArrayList<>();

//		        list.add("Baseball");
//		        list.add("Basketball");
//		        list.add("Cricket");
		
		listArea.add("Capital Department");
		listArea.add("Bani Obaid Department");
		listArea.add("Al-Mazar Al-Shamali Department");
		listArea.add("Ar Ramtha Department");
		listArea.add("Bani Kinanah Department");
		listArea.add("Kourah Department");
		listArea.add("Al-Aghwar Al Shamaliyyeh");
		listArea.add("Taybeh Department");
		listArea.add("Wasatieh Department");

		mv.addObject("listArea", listArea);
		

		
		
		ArrayList<AreaData> listAreaData = new ArrayList<>();
		AreaData areaData = null;
		int irbidDepartId = 1;
		String areaDesc = "";
		for (Iterator iterator = listArea.iterator(); iterator.hasNext();) {
			
			areaData = new AreaData();
			
			areaDesc = (String) iterator.next();
			
			areaData.setId(irbidDepartId);
			areaData.setName(areaDesc.replaceAll("\\s", "").replaceAll("\\-", ""));
			areaData.setDescription(areaDesc);
			listAreaData.add(areaData);
			
			
			System.out.println(areaData.getId());
			System.out.println(areaData.getName());
			System.out.println(areaData.getDescription());
			System.out.println();
			
			
			irbidDepartId++ ;			
		}
		

		mv.addObject("listAreaData", listAreaData);
		
		mv.setViewName("candidateRegistration");
		populateListOfCity(mv, request);

		return mv;
	}
	
	
	
	@RequestMapping("/home3")
	public ModelAndView getCandidateByAre( ) {
		
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
//		System.out.println("Are id = "+ areId);
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<String> listArea = new ArrayList<>();

		
		listArea.add("Capital Department");
		listArea.add("Bani Obaid Department");
		listArea.add("Al-Mazar Al-Shamali Department");
		listArea.add("Ar Ramtha Department");
		listArea.add("Bani Kinanah Department");
		listArea.add("Kourah Department");
		listArea.add("Al-Aghwar Al Shamaliyyeh");
		listArea.add("Taybeh Department");
		listArea.add("Wasatieh Department");
		
		mv.addObject("listArea", listArea);
		
		
		
		
		ArrayList<AreaData> listAreaData = new ArrayList<>();
		AreaData areaData = null;
		int irbidDepartId = 1;
		String areaDesc = "";
		for (Iterator iterator = listArea.iterator(); iterator.hasNext();) {
			
			areaData = new AreaData();
			
			areaDesc = (String) iterator.next();
			
			areaData.setId(irbidDepartId);
			areaData.setName(areaDesc.replaceAll("\\s", "").replaceAll("\\-", ""));
			areaData.setDescription(areaDesc);
			listAreaData.add(areaData);
			
			
			System.out.println(areaData.getId());
			System.out.println(areaData.getName());
			System.out.println(areaData.getDescription());
			System.out.println();
			
			
			irbidDepartId++ ;			
		}
		
		
		mv.addObject("listAreaData", listAreaData);
		
		mv.setViewName("home3");
		
		return mv;
	}
	
	
	@RequestMapping("/getCandidateByAre")
	@ResponseBody
	public String getCandidateByAreaId(@RequestParam int areId) {
		
		
		System.out.println("Alrifai Alrifai");
		
		return "Message from server"; 
	}
	
	
	@RequestMapping("/getCandidateByAreaId")
	public ModelAndView getCandidateByAre(@RequestParam int areId, HttpServletRequest request) {
		
		ModelAndView mv = new ModelAndView();
		
		if(!isSessionValid(request, mv)) {
			
			return mv;
		}
		
		List<String> candidatewithvoterList = populateListAsString(areId);
		
		StringBuffer sb = new StringBuffer();
		for (Iterator iterator = candidatewithvoterList.iterator(); iterator.hasNext();) {
			String string = (String) iterator.next();
	        sb.append(" "+string+ "<br>");
		}
		
		 String message = sb.toString();
		 //System.out.println(message);
		
			mv.addObject("candidatewithvoterList", candidatewithvoterList);
			mv.setViewName("candidate");
		
		return mv;
	}
	
	
	
	private List<String> populateListAsString(int areId) {
		
		System.out.println("Are id = "+ areId);
		
		ModelAndView mv = new ModelAndView();
		
		ArrayList<String> candidateList = null;
		
		
		if(areId==1) {
			candidateList = new ArrayList<>();
			candidateList.add("Ali Alrifai");
			candidateList.add("Mohammad Alrifai");
			candidateList.add("Abdullah Alrifai");
			candidateList.add("Ibrahim  Alrifai");
			candidateList.add("Omar Alrifai");
		}
		
		if(areId==2) {
			candidateList = new ArrayList<>();
			candidateList.add("Ayda Alrifai");
			candidateList.add("Esra Alrifai");
			candidateList.add("Thikra Alrifai");
			
		}
		
		if(areId==3) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		
		if(areId==4) {
			candidateList = new ArrayList<>();
			candidateList.add("Azzam Obeidat");
			candidateList.add("Mohammad  Obeidat");
			candidateList.add("Ibrahim Obeidat");
		}
		
		if(areId==5) {
			candidateList = new ArrayList<>();
			candidateList.add("Haifa Obeidat");
			candidateList.add("Amneh  Obeidat");
		}
		
		if(areId==6) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		
		if(areId==7) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		if(areId==8) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		if(areId==9) {
			candidateList = new ArrayList<>();
			candidateList.add("Tasneem Obeidat");
			candidateList.add("Mouyad  Obeidat");
			candidateList.add("Assad Obeidat");
			candidateList.add("Mujahed Obeidat");
		}
		
		return candidateList;
	}
	
	
	
	
	@RequestMapping(value = "/getCandidateAndVoters", method = RequestMethod.GET)
	public String getCandidateAndVoters() {
		
		Map <CandidateData, VoterData> CandidateAndVoters = new HashMap<CandidateData, VoterData>();
		
		
		return "login";
	}
	
	
	
	
	
	@RequestMapping("/addCandidateFromContactusScreen")
	@ResponseBody
	public List<String> addCandidateFromContactusScreen(CandidateData candidateData, HttpServletRequest request) {


		List<String> messageList = new ArrayList<String>();
		
		if(!isSessionValid(request, new ModelAndView())) {
			
			messageList.add("Failed_Registration");
			messageList.add("Please redirect to login page and use your credintail");
			
			return messageList;
		}
		
		if(StringUtility.isEmpty(candidateData.getFirstName()) 
				|| StringUtility.isEmpty(candidateData.getLastName())
				|| StringUtility.isEmpty(candidateData.getMobile())
				|| StringUtility.isEmpty(candidateData.getEmail())
				|| StringUtility.isEmpty(candidateData.getSsn())
				|| StringUtility.isEmpty(candidateData.getLocation())
						 ) {
			messageList.add("Failed_Registration");
			messageList.add("Please fill all below required fields in order to add new candidate");
			return messageList;
		}
		
		genericService.saveCandidate(candidateData);
		
//		messageList.add(usrdta.getUserName());
//		messageList.add(usrdta.getPassword());
		messageList.add("You have Successfully registered, you now can sign in with your credential");
		
		//getListOfCandidateWithPagination(request, new ModelAndView());
		
		return messageList;
	}
	@RequestMapping("/addvoter") 
	@ResponseBody
	public List<String> addVoterFromContactusScreen2(VoterData voterData,HttpServletRequest request) { 

		List<String> messageList = new ArrayList<String>();

//		
//		if(voterData!=null && voterData.getSsn()!=null) {
//			Optional<VoterData> vd = voterService.findBySsn(voterData.getSsn());
//			VoterData vData =vd.orElse(null);
//			if(vd!=null && vData.getSsn()!=null) {
//				
////				messageList.add("You can not register with this information as ssn already registered");
////				messageList.add("Please try with other information");
//				
//				messageList.add(0, "You can not register with this information as ssn already registered");
//				messageList.add(1, "Please try with other information");
//				
////				System.out.println("The name you entered is not registered in 2023, please register your name at Independent Election Commission before you register in this application");
//				
//
//				return messageList;
//			}	
//		}
		
		
		if(
				StringUtility.isEmpty(voterData.getFullName())
//				|| voterData.getGovernorateData()!=null
//				|| voterData.getConstituencyData()!=null
//				|| voterData.getRegionData()!=null
				
//				StringUtility.isEmpty(voterData.getFirstName()) 
//				|| StringUtility.isEmpty(voterData.getLastName())
				//|| StringUtility.isEmpty(candidateData.getMobile())
				//|| StringUtility.isEmpty(candidateData.getEmail())
				//|| StringUtility.isEmpty(candidateData.getSsn())
				//|| StringUtility.isEmpty(candidateData.getLocation())
//				|| StringUtility.isEmpty(candidateData.getUserName())
//				|| StringUtility.isEmpty(candidateData.getPassword()
				
				) {
			messageList.add("Failed_Registration");
			messageList.add("Please fill all below required fields in order to add new candidate");
			return messageList;
		}
		
		String fullName = voterData.getFullName();
		Integer governorateId = voterData.getGovernorateId();
		Integer constituencyId = voterData.getConstituencyId();
		Integer ssn = voterData.getSsn();
		messageList = enterNewName(fullName, governorateId , constituencyId , ssn ); 
		
		if(messageList!=null && messageList.get(0).equals("Failed_Registration")) {
			return messageList;
		}
		
		//if(messageList!=null && messageList.get(0).equals("Successfull Registration")) {
//		if(messageList!=null && messageList.get(3).equals("Need_To_Be_Registered")) {
//			return messageList;
//		}
		
		
		
//		below 2 lines moved to method(voterRegisterWithCredential)
//		UserData userData = new UserData();
//		genericService.saveCandidate(candidateData);
		HttpSession session = request.getSession();

		session.setAttribute("voterData", voterData);
		messageList.add("You have Successfully registered, you now can sign in with your credential");
		
		setDetailsToVoter(voterData, request);
		
		
		//genericService.saveCandidate(cndidtDta);
		voterService.saveVoter(voterData);
		
		
		return messageList;
	}
	@RequestMapping("/uploadImageScreen") 
	public ModelAndView  uploadImageScreen(HttpServletRequest request) {
	
		ModelAndView  mv = new ModelAndView();
		mv.setViewName("uploadimagescreen");
		
		HttpSession session = request.getSession();
		CandidateData candidateData =(CandidateData)session.getAttribute("candidateData");
		session.setAttribute("candidateData", candidateData);
		request.setAttribute("candidateData", candidateData);
		
		return mv;
	}
	
		@RequestMapping("/uploadImage") 
		public ModelAndView  uploadImage(MultipartFile imageStr, HttpServletRequest request) {

		HttpSession session = request.getSession();
		CandidateData candidateData =(CandidateData)session.getAttribute("candidateData");
			
		byte[] imageData = null;
		if (imageStr!=null) {
			try {
				byte[] bytes = imageStr.getBytes();
				imageData =bytes;
				session.setAttribute("bytes", bytes);
				request.setAttribute("bytes", bytes);
				request.setAttribute("imageStr", imageStr);
	//			String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
				candidateData.setImageData(bytes);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	
		candidateService.saveCandidate(candidateData);
		}
		
		ModelAndView  mv = new ModelAndView();
		request.setAttribute("SuccImgUploadMsg", "You have successfully registerred and uploaded photo, please login to see updates");
//		mv.setViewName("login");
		mv.setViewName("candidateregistrationsucceeded");
		return mv;
	}

	
	
	@RequestMapping("/addCandidate") 
	@ResponseBody 
//	public List<String> addCandidate(CandidateData candidateData ,MultipartFile imageStr, HttpServletRequest request) { 
		public List<String> addCandidate(CandidateData candidateData ,MultipartFile formData, HttpServletRequest request) { 
		
		List<String> messageList = new ArrayList<String>();
		
		if(
				StringUtility.isEmpty(candidateData.getFullName())
				) {
			messageList.add("Candidate registration failed");
			messageList.add("Please fill all below required fields in order to add new candidate");
			return messageList;
		}
		
//		if(candidateData.getImageData()!=null) {
		  HttpSession session = request.getSession();
		  byte[] bytesOfImage= (byte[]) session.getAttribute("bytes");
		  
//			if(StringUtility.isNotEmpty(candidateData.getPath())) {
				if(bytesOfImage!=null) {
			//File file = new File(candidateData.getPath());
			//byte[] imageData = new byte[(int) file.length()];
			//byte[] fileLength= new byte[(int) file.length()];
			//candidateData.setImageData(new byte[(int) file.length()]);
			  

			  // file to byte[], Path
			  try {
				  String filePath = candidateData.getPath(); 
				  MultipartFile multipartFile = candidateData.getMultipartFile();
					byte[] bytes = multipartFile.getBytes();
					
					bytes = formData.getBytes();
					//Path path = Paths.get(UPLOAD_FOLDER + multipartFile.getOriginalFilename());
				  //String filePath2 = candidateData.getPath2();
				  //filePath = "/resources/images/"+"ali alrifai.png";
				  //filePath = "\\resources\\images\\"+"ali alrifai.png";

				//byte[] bytes = Files.readAllBytes(Paths.get(filePath));
				  // file to byte[], File -> Path
				  //filePath = "C:\\Users\\asf\\Downloads\\Tarek Sami Hanna Khoury.jpg";
				  //filePath = "C:\\Users\\asf\\Downloads\\ali alrifai.png"; 
				  
				  //"C:\\myfile.txt"
				  File file = new File(filePath);
				  byte[] bytess = Files.readAllBytes(file.toPath());
				  candidateData.setImageData(bytess);
				
				  candidateData.setImageData(bytes);
				  
				  
//				  String filePath = candidateData.getPath();

		            // file to bytes[]
//		            byte[] bytes = Files.readAllBytes(Paths.get(filePath));

		            // bytes[] to file
		            //Path path = Paths.get(filePath);
		            //Files.write(path, bytes);
//		            candidateData.setImageData(bytes);
				  
				  
//				  File imgPath = new File(candidateData.getPath());
//				  BufferedImage bufferedImage = ImageIO.read(imgPath);
//
//				  // get DataBufferBytes from Raster
//				  WritableRaster raster = bufferedImage .getRaster();
//				  DataBufferByte data   = (DataBufferByte) raster.getDataBuffer();
//				  byte [] imageData= data.getData();
//				  candidateData.setImageData(imageData);
//				  
//				  URL imageURL = new URL(profileImgUrl);
//				  BufferedImage originalImage=ImageIO.read(imageURL);
//				  ByteArrayOutputStream baos=new ByteArrayOutputStream();
//				  ImageIO.write(originalImage, "jpg", baos );
//
//				  //Persist - in this case to a file
//
//				  FileOutputStream fos = new FileOutputStream("outputImageName.jpg");
//				  baos.writeTo(fos);
//				  fos.close();
				  
//				  ImageData.builder()
//	                .name(file.getOriginalFilename())
//	                .type(file.getContentType())
//	                .imageData(ImageUtil.compressImage(file.getBytes())).build()
//				  
				  
//				  String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
//			        user.setPhotos(fileName);
//			         
//			        User savedUser = repo.save(user);
//			 
//			        String uploadDir = "user-photos/" + savedUser.getId();
//			 
//			        FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
				  
//				     String fileName = StringUtils.cleanPath(candidateData.getMultipartFile().getOriginalFilename());
//				     candidateData.setPhoto(fileName);
				         
//				        User savedUser = repo.save(user);
				 
//				        String uploadDir = "user-photos/" + savedUser.getId();
				 
//				        FileUploadUtil.saveFile(uploadDir, fileName, multipartFile);
			        
			} catch (IOException e) {
//				// TODO Auto-generated catch block
				e.printStackTrace();
				
				
			}
			
		} 
		
		String fullName = candidateData.getFullName();
//		if(StringUtility.isEmpty(candidateData.getSingupAsvoterFlag()) && candidateData.getSingupAsvoterFlag().equals(true)) {
		if(true) {
//			messageList = enterNewName(fullName);
			Integer governorateId = candidateData.getGovernorateId();
			Integer constituencyId = candidateData.getConstituencyId();
			String ssn = candidateData.getSsn();
			messageList = enterNewName(fullName, governorateId , constituencyId , Integer.valueOf(ssn) );
			
			if(messageList.get(0).equals("Failed_Registration")) {
				return messageList;
			}			
		}
		
//		below 2 lines moved to method(voterRegisterWithCredential)
//		UserData userData = new UserData();
//		genericService.saveCandidate(candidateData);
//		HttpSession session = request.getSession();
		
		
		messageList.add("You have Successfully registered, you now can sign in with your credential");
		session.setAttribute("candidateData", candidateData);
		setDetailsToCandidate(candidateData, request);
		
		//genericService.saveCandidate(cndidtDta);
		candidateService.saveCandidate(candidateData);
		
		
		return messageList;
	}
	
	
	
	
//	public static void main(String[] args) {
//		
//		String arabicFullName = "محمد"; 
//		String newValue = (((((((((((((((((((((((((((((arabicFullName+"")
//				.replaceAll("ا", "A"))
//				.replaceAll("ب", "B"))
//				.replaceAll("ت", "t"))
//				.replaceAll("ث", "th"))
//				.replaceAll("ج", "j"))
//				.replaceAll("ح", "h"))
//				.replaceAll("خ", "kh"))
//				.replaceAll("د", "d"))
//				.replaceAll("ذ", "th"))
//				.replaceAll("ر", "r"))
//				.replaceAll("ز", "z"))
//				.replaceAll("س", "c"))
//				.replaceAll("ش", "sh"))
//				.replaceAll("ص", "s"))
//				.replaceAll("ض", "d"))
//				.replaceAll("ط", "t"))
//				.replaceAll("ظ", "th"))
//				.replaceAll("ع", "A"))
//	            .replaceAll("غ", "g"))
//				.replaceAll("ف", "f"))
//	            .replaceAll("ق", "k"))
//				.replaceAll("ك", "k"))
//	            .replaceAll("ل", "l"))
//				.replaceAll("م", "m"))
//	            .replaceAll("ن", "n"))
//				.replaceAll("ه", "h"))
//	            .replaceAll("و", "o"))
//				.replaceAll("ي", "e")
//				);
//		
//		System.out.println(newValue);
//		
//		
//		System.out.println(newValue);
//	}
	
	
	private String  convertToEnglish(String arabicFullName) {

		
		
		
		
//		if(arabicFullName.equals("")) {
//			
//		}
		String newValue = ((((((((((((((((((((((((((((((((((arabicFullName+"")
				.replaceAll("ى", "a")) 
				.replaceAll("ؤ", "o"))  
				.replaceAll("ئ", "a"))
				.replaceAll("أ", "a"))
				.replaceAll("آ", "a"))
				.replaceAll("ا", "a"))
				.replaceAll("ب", "b"))
				.replaceAll("ت", "t"))
				.replaceAll("ث", "th"))
				.replaceAll("ج", "j"))
				.replaceAll("ح", "h"))
				.replaceAll("خ", "kh"))
				.replaceAll("د", "d"))
				.replaceAll("ذ", "th"))
				.replaceAll("ر", "r"))
				.replaceAll("ز", "z"))
				.replaceAll("س", "c"))
				.replaceAll("ش", "sh"))
				.replaceAll("ص", "s"))
				.replaceAll("ض", "d"))
				.replaceAll("ط", "t"))
				.replaceAll("ظ", "th"))
				.replaceAll("ع", "A"))
	            .replaceAll("غ", "g"))
				.replaceAll("ف", "f"))
	            .replaceAll("ق", "k"))
				.replaceAll("ك", "k"))
	            .replaceAll("ل", "l"))
				.replaceAll("م", "m"))
	            .replaceAll("ن", "n"))
				.replaceAll("ه", "h"))
	            .replaceAll("و", "o"))
				.replaceAll("ي", "e")
				);
		
		System.out.println(newValue.substring(0,1).toUpperCase());
		System.out.println(newValue);
		
		//String newValueWithUpperCase  = newValue.substring(0, 1).toUpperCase() + newValue.substring(1);
		String newValueWithUpperCase  = newValue.replace(newValue.substring(0, 1), newValue.substring(0, 1).toUpperCase());
	
		
		return newValueWithUpperCase;
	}


	private void setDetailsToVoter(VoterData voterData, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		List<GovernorateData>  governorateDataList = (ArrayList<GovernorateData> )session.getAttribute("governorateDataList");		
				governorateDataList.forEach(gData -> {
			            if (gData.getId().intValue()==voterData.getGovernorateId().intValue()) {
			            	voterData.setGovernorateData(gData);
			            }
			        }
				);
		
		List<ConstituencyData>  constituencyDataList = (ArrayList<ConstituencyData> )session.getAttribute("constituencyDataList"); 
		constituencyDataList.forEach(cData -> {
			System.out.println(cData.getId() + "   " +voterData.getConstituencyId());
			System.out.println(cData.getId()==voterData.getConstituencyId()); 
                    if (cData.getId().intValue()==voterData.getConstituencyId().intValue()) {
                    	voterData.setConstituencyData(cData);
                    }
                }
        );
		
		
		//voterData.setRegionData(new RegionData());
		
		UserData userData = new UserData();
		userData.setUserName(voterData.getUserName());
		userData.setPassword(voterData.getPassword());
		String ssnStr = voterData.getSsnStr();
		Long ssn = Long.parseLong(ssnStr);
		Integer ssnInt = Integer.getInteger(ssnStr);
		userData.setSsn(ssn);
		voterData.setSsn(ssnInt);
		userData.setFullName(voterData.getFullName()); 
		//userData.setGenericDateAndTimeData(new GenericDateAndTimeData());  
		userData.getGenericDateAndTimeData().setCreatedBy(voterData.getUserName());
		//userData.getGenericDateAndTimeData().setCreatedTs(new Date());
		userData.getGenericDateAndTimeData().setUpdatedBy(voterData.getUserName());
		userData.getGenericDateAndTimeData().setUpdatedTs(new Date());
		
		voterData.setUData(userData);
		userData.setVData(voterData);  
		if(StringUtility.isNotEmpty(voterData.getFullName()) && StringUtility.isEmpty(voterData.getEnglishFullName())) {
			voterData.setEnglishFullName(convertToEnglish(voterData.getFullName()));
		}
		voterData.getGenericDateAndTimeData().setCreatedBy(voterData.getUserName());
		voterData.getGenericDateAndTimeData().setUpdatedBy(voterData.getUserName());
		
	}
	private void setDetailsToCandidate(CandidateData candidateData, HttpServletRequest request) {
		
		HttpSession session = request.getSession();
		
		List<GovernorateData>  governorateDataList = (ArrayList<GovernorateData> )session.getAttribute("governorateDataList");		
		governorateDataList.forEach(gData -> {
			if (gData.getId().intValue()==candidateData.getGovernorateId().intValue()) {
				candidateData.setGovernorateData(gData);
//				gData.setCandidateDataSet(null);
			}
		}
				);
		
		List<ConstituencyData>  constituencyDataList = (ArrayList<ConstituencyData> )session.getAttribute("constituencyDataList"); 
		constituencyDataList.forEach(cData -> {
			//System.out.println(cData.getId() + "   " +candidateData.getConstituencyId());
			//System.out.println(cData.getId()==candidateData.getConstituencyId()); 
			if (cData.getId().intValue()==candidateData.getConstituencyId().intValue()) {
				candidateData.setConstituencyData(cData);
//				cData.setCandidateDataSet(null);
			}
		}
				);
		
		
		//voterData.setRegionData(new RegionData());
		
		UserData userData = new UserData();
		userData.setUserName(candidateData.getUserName());
		userData.setPassword(candidateData.getPassword());
		
		Long ssn = Long.parseLong(candidateData.getSsn());
		userData.setSsn(ssn);
		userData.setFullName(candidateData.getFullName());
		//userData.setGenericDateAndTimeData(new GenericDateAndTimeData());  
		userData.getGenericDateAndTimeData().setCreatedBy(candidateData.getUserName());
		//userData.getGenericDateAndTimeData().setCreatedTs(new Date());
		userData.getGenericDateAndTimeData().setUpdatedBy(candidateData.getUserName());
		userData.getGenericDateAndTimeData().setUpdatedTs(new Date());
		
		candidateData.setUserData(userData);
		userData.setCandidateData(candidateData);  
		if(StringUtility.isNotEmpty(candidateData.getFullName()) && StringUtility.isEmpty(candidateData.getEnglishFullName())) {
			candidateData.setEnglishFullName(convertToEnglish(candidateData.getFullName()));
//			voterData.setId(507);
		}
//		voterData.setGenericDateAndTimeData(new GenericDateAndTimeData());
		candidateData.getGenericDateAndTimeData().setCreatedBy(candidateData.getUserName());
//		voterData.getGenericDateAndTimeData().setCreatedTs(new Date());
		candidateData.getGenericDateAndTimeData().setUpdatedBy(candidateData.getUserName());
//		voterData.getGenericDateAndTimeData().setUpdatedTs(new Date());
		
	}

//	@RequestMapping("/voterregistrationsucceeded") 
//	public ModelAndView  voterRegistrationSucceeded(MultipartFile imageStr, HttpServletRequest request) {
//		
//		logger.log(Level.SEVERE, "** voterRegistrationSucceeded method starts **");
//		
//		HttpSession session = request.getSession();
//		
//		ModelAndView  mv = new ModelAndView();
//		request.setAttribute("SuccImgUploadMsg", "You have successfully registerred as a voter, please login to see updates and to vote");
//		mv.setViewName("voterregistrationsucceeded");
//		return mv;
//	}

	@RequestMapping("/voterregisterwithcredential") 
	public ModelAndView voterRegisterWithCredential(VoterData voterData, HttpServletRequest request) {
	
		ModelAndView  mv = new ModelAndView();

		
		HttpSession session = request.getSession();
		if(session!=null && session.getAttribute("candidateData")!=null) {
			CandidateData candidateData = (CandidateData) session.getAttribute("candidateData") ;			
		}
		voterData = (VoterData) session.getAttribute("voterData") ;
		UserData userData = new UserData();
//		genericService.saveCandidate(cndidtDta);
		
//		mv.setViewName("login");
		mv.setViewName("voterregistrationsucceeded");
		invalidateSession(session);
		
		return mv;
	}
	
	
	@GetMapping(value = "/candidateinformation")
	public ModelAndView  redirectToCandidateInformation(HttpServletRequest request, String ...viewName) { 
		
		ModelAndView  mv = new ModelAndView();
		HttpSession session = request.getSession();
		
//		if(!isSessionValid(request, mv)) {
//			
//			return mv;
//		}
		
		
		
		if(viewName != null && viewName.length>0 && StringUtility.isNotEmpty(viewName[0])) {
			//mv.setViewName(viewName[0]); 
			session.setAttribute(GlobalConstant.PREVIOUS_PAGE, viewName[0]);
		}
		
		mv.setViewName("candidateinformation");
		
		return mv ; 
	}
	@GetMapping(value = "/abouttheapplication")
	public ModelAndView  redirectToAboutTheApplication(HttpServletRequest request, String ...viewName) { 
		
		ModelAndView  mv = new ModelAndView();
		HttpSession session = request.getSession();
		
//		if(!isSessionValid(request, mv)) {
//			
//			return mv;
//		}
		
		if(viewName != null && viewName.length>0 && StringUtility.isNotEmpty(viewName[0])) {
			//mv.setViewName(viewName[0]); 
			session.setAttribute(GlobalConstant.PREVIOUS_PAGE, viewName[0]);
		}
		
		mv.setViewName("abouttheapplication");
		
		return mv ; 
	}
	@GetMapping(value = "/electoralDistricts")
	public ModelAndView  electoralDistricts(HttpServletRequest request, String ...viewName) { 
		
		ModelAndView  mv = new ModelAndView();
		HttpSession session = request.getSession();
		
//		if(!isSessionValid(request, mv)) {	
//			return mv;
//		}
		if(viewName != null && viewName.length>0 && StringUtility.isNotEmpty(viewName[0])) {
			//mv.setViewName(viewName[0]); 
			session.setAttribute(GlobalConstant.PREVIOUS_PAGE, viewName[0]);
		}
		mv.setViewName("electoraldistricts");
		
		return mv ; 
	}
	@GetMapping(value = "/ListOfMembers")
	public ModelAndView  ListOfMembers(HttpServletRequest request, String ...viewName) { 
		
		ModelAndView  mv = new ModelAndView();
		HttpSession session = request.getSession();
		
//		if(!isSessionValid(request, mv)) {	
//			return mv;
//		}
		if(viewName != null && viewName.length>0 && StringUtility.isNotEmpty(viewName[0])) {
			//mv.setViewName(viewName[0]); 
			session.setAttribute(GlobalConstant.PREVIOUS_PAGE, viewName[0]);
		}
		mv.setViewName("listofmembers");
		
		return mv ; 
	}
	
	@GetMapping(value = "/selectedCandidate")
	public ModelAndView  selectedCandidate(Integer userId, Integer candidateId,  HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		
		Optional<CandidateData> cnddatData = candidateService.findById(candidateId);
		CandidateData candidateData = cnddatData.orElse(null);
		
		HttpSession session = request.getSession();

		UserData userData = genericService.findById(userId);
		VoterData voterData = userData.getVData();
		session.setAttribute("voterData", voterData);
		
		if(candidateData.getImageData()!=null) {
            byte[] encodeBase64 = Base64.encodeBase64(candidateData.getImageData());
            String base64Encoded = null;
			try {
				base64Encoded = new String(encodeBase64, "UTF-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
            candidateData.setBase64image(base64Encoded);	
		}
		
		
		request.setAttribute("candidateData", candidateData);
		
		GovernorateData governorateData = candidateData.getGovernorateData();
		ConstituencyData constituencyData = candidateData.getConstituencyData();
		
		request.setAttribute("governorateData", governorateData);
		request.setAttribute("constituencyData", constituencyData);
		
		Integer numberOfVotes = voterService.findNumberOfVotesByCandidateId(candidateData.getId());
		
		//request.setAttribute("numberOfVotes", numberOfVotes);
		
		session.setAttribute("numberOfVotes", numberOfVotes);
		
		mv.setViewName("selectedcandidate");
		
		return mv;
		
	}
	
		@GetMapping(value = "/SeeListOfVoters")
		public ModelAndView  SeeListOfVoters(HttpServletRequest request,String userName, String password, String ...viewName) { 
		
		ModelAndView  mv = new ModelAndView();
		HttpSession session = request.getSession();

		UserData usrdta = new UserData();
		usrdta.setUserName(userName);
		usrdta.setPassword(password);
		UserData userData = genericService.findUser(usrdta);

		CandidateData candidateData = null;
		if(userData!=null) {
			 candidateData = userData.getCandidateData();
		}
		
		try {
			session.setAttribute("userData", userData);
			session.setAttribute("candidateData", candidateData);
		} catch (Exception ex) {
	        logger.log(Level.SEVERE, "an exception was thrown", ex);

		}
		
		
		VoterData voterData = userData.getVData();
		if(candidateData!=null) {
			
		}
		if(voterData!=null) {
			
		}
		
//		usrdta.setId(candidateId);
//		userData = genericService.findUser(usrdta);
		
//		if(!isSessionValid(request, mv)) {	
//			return mv;
//		}
		if(viewName != null && viewName.length>0 && StringUtility.isNotEmpty(viewName[0])) {
			//mv.setViewName(viewName[0]); 
			session.setAttribute(GlobalConstant.PREVIOUS_PAGE, viewName[0]);
		}
		mv.setViewName("seelistofvoters");
		
		Integer numberOfVotes = (Integer) session.getAttribute("numberOfVotes");
		session.setAttribute("numberOfVotes", numberOfVotes);
		
		
		List<VoterData>		voterDataList = voterService.findAllByGovernorateDataAndConstituencyData(candidateData.getGovernorateData(), candidateData.getConstituencyData());
		List<VoterData>		voterDataByCandidateIdList = voterService.findVoterDataListByCandidateId(candidateData.getId()) ;
		session.setAttribute("voterDataList", voterDataList);
		session.setAttribute("voterDataByCandidateIdList", voterDataByCandidateIdList);
		
		
		return mv ; 
	}
	
	
	
	@GetMapping(value = "/SeeListOfCandidates")
	public ModelAndView  SeeListOfCandidates(String userName, String password, HttpServletRequest request, String ...viewName) { 
		
		ModelAndView  mv = new ModelAndView();
		HttpSession session = request.getSession();
		
//		if(!isSessionValid(request, mv)) {	
//			return mv;
//		}
		
		UserData usrdta = new UserData();
		usrdta.setUserName(userName);
		usrdta.setPassword(password);
		UserData userData = genericService.findUser(usrdta);
		session.setAttribute("userData", userData);
		
		CandidateData candidateData = userData.getCandidateData();
		VoterData voterData = userData.getVData();
		
//		GovernorateData governorateData = (GovernorateData)request.getAttribute("governorateData");
//		ConstituencyData constituencyData =(ConstituencyData)request.getAttribute("constituencyData");
		
		
		request.setAttribute("candidateData", candidateData);
		request.setAttribute("voterData", voterData);
		
		
		
//		if(candidateData!=null) {
//			
//		}
//		if(voterData!=null) {
//		}
		
		
		if(viewName != null && viewName.length>0 && StringUtility.isNotEmpty(viewName[0])) {
			//mv.setViewName(viewName[0]); 
			session.setAttribute(GlobalConstant.PREVIOUS_PAGE, viewName[0]);
		}
		mv.setViewName("seelistofcandidates"); 
		
		
		List<CandidateData> candidateDataList = (List<CandidateData>)session.getAttribute("candidateDataList");
//		candidateDataList = candidateService.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);

		if(candidateDataList==null && voterData!=null) {
			//VoterData voterData= (VoterData )session.getAttribute("voterData");
//			voterData= (VoterData )session.getAttribute("voterData");
			GovernorateData governorateData = voterData.getGovernorateData();
			ConstituencyData constituencyData =  voterData.getConstituencyData();
			candidateDataList = candidateService.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
			
			request.setAttribute("governorateData", governorateData);
			request.setAttribute("constituencyData", constituencyData);
		}

		if(candidateDataList==null && candidateData!=null) {
			GovernorateData governorateData = candidateData.getGovernorateData();
			ConstituencyData constituencyData =  candidateData.getConstituencyData();
			candidateDataList = candidateService.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
			
			session.setAttribute("hideVoteButtonOfCandidate", "Yes");
			
			request.setAttribute("governorateData", governorateData);
			request.setAttribute("constituencyData", constituencyData);
		}
		
		if(candidateDataList!=null) {
			for(CandidateData cndidteData: candidateDataList ) {
				
				cndidteData.setNumberOfVotes(voterService.findNumberOfVotesByCandidateId(cndidteData.getId()));
				if(cndidteData.getImageData()!=null) {
					byte[] encodeBase64 = Base64.encodeBase64(cndidteData.getImageData());
					String base64Encoded = null;
					try {
						base64Encoded = new String(encodeBase64, "UTF-8");
					} catch (UnsupportedEncodingException e) {
						e.printStackTrace();
					}
					cndidteData.setBase64image(base64Encoded);
				}
			}
		}
		
		session.setAttribute("candidateDataList", candidateDataList);
		request.setAttribute("candidateDataList", candidateDataList);
		
//		Integer numberOfVotes = (Integer) session.getAttribute("numberOfVotes");
//		session.setAttribute("numberOfVotes", numberOfVotes);
//		
//		CandidateData candidateData = (CandidateData) session.getAttribute("candidateData");
//		session.setAttribute("candidateData", candidateData);
//		
//		UserData userData = (UserData) session.getAttribute("userData"); 
//		session.setAttribute("userData", userData);
//		request.setAttribute("userData", userData);
		
		//session.setAttribute("voterDataByCandidateIdList", voterDataByCandidateIdList);
//		List<VoterData> voterDataByCandidateIdList = (List<VoterData>) session.getAttribute("voterDataByCandidateIdList");
//		session.setAttribute("voterDataByCandidateIdList", voterDataByCandidateIdList);
		return mv ; 
	}
	
	
	
	@GetMapping(value = "/previousPage") 
	public ModelAndView  previousPage(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
		if(!isSessionValid(request, mv)) {	
			return mv;
		}
		
		
		HttpSession session = request.getSession();
		
		
		String previousPage = null;// Default value of String is null
		
		if( session != null ) {
			previousPage = (String)session.getAttribute(GlobalConstant.PREVIOUS_PAGE);			
		}
		
		if(StringUtility.isNotEmpty(previousPage)) {
			
			mv.setViewName(previousPage);
			
		}else {
			mv.setViewName("/");  
		}
		
		return mv ;
	}
	
	
	
	@GetMapping(value = "/news") 
	public ModelAndView  news(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
//		if(!isSessionValid(request, mv)) {
//			
//			return mv;
//		}  
		
		mv.setViewName("news");  
		
		return mv ;
	}
 
	
	
	@GetMapping(value = "/candidacyconditions")
	public ModelAndView  redirectToCandidacyConditions(HttpServletRequest request) {
		
		ModelAndView  mv = new ModelAndView();
		
//		if(!isSessionValid(request, mv)) {
//			
//			return mv;
//		}
		
		
		mv.setViewName("candidacyconditions");
		
		return mv ; 
	}
 
	
	

//	private void getAuthority() {
//		Collection<SimpleGrantedAuthority> authorities = (Collection<SimpleGrantedAuthority>)SecurityContextHolder.getContext().getAuthentication().getAuthorities();
//
//		for (Iterator iterator = authorities.iterator(); iterator.hasNext();) {
//			SimpleGrantedAuthority simpleGrantedAuthority = (SimpleGrantedAuthority) iterator.next();
//			System.out.println(simpleGrantedAuthority.getAuthority());  
////			if(StringUtility.isNotBlank(simpleGrantedAuthority.getAuthority()) ) {
////				simpleGrantedAuthority = new SimpleGrantedAuthority("ROLE_USER");
////			}
////			System.out.println(simpleGrantedAuthority.getAuthority());  
//		}
//	}
	
	
	
	
	@RequestMapping("/voterRegistration")
	public ModelAndView voterRegistration(Map<String, Object> model, HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("voterRegistration");
		
		populateListOfCity(mv, request);
		
		return mv;
	}
	
	
	private List<String> enterNewName(String fullName, Integer governorateId , Integer constituencyId, Integer ssn) { 
//		Scanner input = new Scanner(System.in);
		//System.out.println("Enter your full name as it appears in you id");
		//String userName = input.nextLine();
		
		List<String> messageList = new ArrayList<String>();
		messageList = checkIfEnteredNameAlreadyRegistedIn2020(fullName, governorateId , constituencyId);
		List<String> newMessageList = null;
		if(messageList!=null && messageList.get(0)!=null && messageList.get(0).equals("Successfull Registration") ) {
			newMessageList = checkIfEnteredNameIsInDb(fullName, Long.valueOf(governorateId) , Long.valueOf(constituencyId), ssn);			
		}
		 
		if(newMessageList!=null && newMessageList.size()>0 ) {
			return newMessageList; 
		}else {
			//messageList.add(3, "Need_To_Be_Registered");
		}
		
		return messageList;
	}
 

	private List<String> checkIfEnteredNameIsInDb(String fullName, Long governorateId, Long constituencyId,  Integer ssn) {
		
		Optional<VoterData> votrData = voterService.findFullName(fullName, governorateId, constituencyId);
		VoterData voterData = votrData.orElse(null);
		
		List<String> messageList = new ArrayList<String>();
		if(voterData !=null && voterData.getId()!=null) {
			Date CreatedTs = voterData.getGenericDateAndTimeData().getCreatedTs();
			Date _3DaysBefore = getPreviousDate();
			if (CreatedTs.before(_3DaysBefore )) { 
				
				messageList.add(0, "Failed_Registration");  
				messageList.add(1, "تم التسجيل بهذا الاسم مسبقا بالفعل او اسم مشابه، اذا كنت تعتقد انك لم تسجل رجاء المحاوله خلال 48 ساعه مره اخرى");
			}else if(ssn==voterData.getSsn()) {
				messageList.add(0, "Failed_Registration");  
				messageList.add(1, "  تم التسجيل بهذا الاسم والرقم الوطني مسبقا بالفعل لا يمكنك التسجيل مره اخرى اذا كنت تعتقد انك تلقيت هذه الرساله عن طريق الخطا الرجاء المحاوله مره اخرى بعد 24 ساعه ");
				}
				
//			else {
//				messageList.add(0, "Need_To_Be_Registered"); 
//			}


		}
		
		
		return messageList;
	}
	
	
	private Date getPreviousDate() {

		Calendar cal = Calendar.getInstance();
	    cal.add(Calendar.DATE, -3);
	    return cal.getTime();
		
	}




	private  List<String> checkIfEnteredNameAlreadyRegistedIn2020(String enteredName, 
			Integer governorateId , Integer constituencyId) {
		
		
//		if(voterData!=null && voterData.getSsn()!=null) {
//			Optional<VoterData> vd = voterService.findBySsn(voterData.getSsn());
//			VoterData vData =vd.orElse(null);
//			if(vd!=null && vData.getSsn()!=null) {
//				
////				messageList.add("You can not register with this information as ssn already registered");
////				messageList.add("Please try with other information");
//				
//				messageList.add(0, "You can not register with this information as ssn already registered");
//				messageList.add(1, "Please try with other information");
//				
////				System.out.println("The name you entered is not registered in 2023, please register your name at Independent Election Commission before you register in this application");
//				
//
//				return messageList;
//			}	
//		}
		
		
		//ArrayList<String> ammanVoterNames2020List = new ArrayList<String>();
		List<String> messageList = new ArrayList<String>();
		
		BufferedReader bufReader = null;
		//File file = null;
		//ClassLoader classLoader = getClass().getClassLoader();
		InputStream fileReader = null;
		try {
			//Amman
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Amman")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Amman_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Amman_1.txt");
				}	
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Amman_Second_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Amman_2.txt");
				}
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Amman_Third_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Amman_3.txt");
				}
			}
			
			//Irbid
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Irbid")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Irbid_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Irbid_1.txt");
				}	
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Irbid_Second_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Irbid_2.txt");
				}
			}
			//Balqa
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Balqa")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Balqa_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Balqa_1.txt");
				}
			}
			
			//Karak
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Karak")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Karak_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Karak_1.txt");
				}
			}

			//Maan
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Maan")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Maan_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Maan_1.txt");
				}
			}
			
			//Zarqa
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Zarqa")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Zarqa_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Zarqa_1.txt");
				}
			}
			
			//Al-Mafraq
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Al-Mafraq")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Al-Mafraq_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Mafraq_1.txt");
				}
			}
			
			//At-Tafilah
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("At-Tafilah")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("At-Tafilah_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Tafilah_1.txt");
				}
			}

			//Madaba
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Madaba")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Madaba_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Madaba_1.txt");
				}
			}
			
			//Jerash
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Jerash")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Jerash_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Jerash_1.txt");
				}
			}
			
			
			//Ajloun
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Ajloun")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Ajloun_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Ajloun_1.txt");
				}
			}

			//Aqaba
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Aqaba")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Aqaba_First_Constituency")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Aqaba_1.txt");
				}
			}
			
			
			//Badia
			if(governorateId==GovernorateEnum.GOVERNORATE_ENUM.get("Badia")) {
				
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Badia_North_Bedouin")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Badia_North.txt");
				}	
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Badia_Mediation_Bedouin")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Badia_Middle.txt");
				}
				if(constituencyId==ConstituencyEnum.CONSTITUENCY_ENUM.get("Badia_South_Bedouin")) {
					fileReader = getClass().getClassLoader().getResourceAsStream("Badia_South.txt");
				}
			}
			
			

			bufReader = new BufferedReader(new InputStreamReader(fileReader, "UTF-8"));
			
			ArrayList<String> listOfLines = new ArrayList<>(); 
			String line = bufReader.readLine();
			int i = 0;
			boolean isTheEnteredNameValied = false;
			int count = 0;
			while (line != null) 
			{ 
				listOfLines.add(line); 
				line = bufReader.readLine(); 
				
				if(line != null && line.trim().equals(enteredName.trim()))
				{
					System.out.println("Name is valid and registered in 2020, you can go ahead and register in this application ");
					isTheEnteredNameValied = true;
					messageList.add(0, "Successfull Registration");
					messageList.add(1, line + " is Valid and registered in 2020");
					messageList.add(2, line);
					count++;
					
//					if(count==2)
//					break;
				}
				if(count==1) {
					count++;
				}
				if(count==2) {
					break;
				}
					
			}
			
			if(!isTheEnteredNameValied) {
				messageList.add(0, "Failed_Registration");  
				//messageList.add(1, "الاسم الذي قمت بادخاله غير موجود في المدينه والدائره الانتخابيه التي قمت باختيارها، اذا كنت تعتقد ان هذا خطا الرجاء التاكد من المدينه والدائره الانتخابيه الصحيحتين والقيام بالتسجيل فيهما");
				messageList.add(1, "الرجاء التاكد من ان الاسم والرقم الوطني المدخلين يتطابقان مع هويتك الشخصيه او تاكد من منطقتك الانتخابيه الصحيحه");
				
				System.out.println("The name you entered is not registered in 2023, please register your name at Independent Election Commission before you register in this application");
				
				return messageList;
			}
			
			bufReader.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
//		for(String s: voterNames ) {
			//System.out.println(s+ "  "+voterNames.indexOf(s) );
//			if(StringUtility.isNoneEmpty(s)) {
//				System.out.println(s.trim());				
//			}
//		}
		
		return messageList; 
	}
	
//	public static void main(String[] args) throws Exception { // main method for extracting text from image
//	    
////        License.setLicense("Aspose.OCR.lic");
//            
//        AsposeOCR TextExtractFromImage = new AsposeOCR();
//
//        String ExtractedTextFromImage = TextExtractFromImage.RecognizePage("Alrifai_DL_name.jpg");
//        // Save extracted text to a text file using FileWriter
//        File output = new File("TextExtractFromImageUsingOCR.txt");
//        FileWriter writer = new FileWriter(output);
//        writer.write(ExtractedTextFromImage);
//        writer.flush();
//        writer.close();
//    }
		
		public static void UploadIdCopyForVerification(){
		
		BufferedReader bufReader = null;
		try {
			FileReader fileReader=new FileReader("Alrifai_DL.jpg");  
			//FileReader fileReader=new FileReader("2020_Amman_ThirdElectoralDistrict.pdf");
			try {
//				logger.info("................inside returnLanguageSelected....................");
//				logger.info("UploadIdCopyForVerification()");
				System.out.println("UploadIdCopyForVerification()");
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} 
			bufReader = new BufferedReader(fileReader);
			
			ArrayList<String> listOfLines = new ArrayList<>(); 
			String line = bufReader.readLine();
			int i = 0;
			boolean isTheEnteredNameValied = false;
			while (line != null) 
			{ 
				listOfLines.add(line); 
				line = bufReader.readLine();
				System.out.println(line);	
			}
			
			bufReader.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
		
		
		
		@GetMapping (value = "/voteToCandidate")  
		//public ModelAndView login(@RequestParam("userName")  String userName, @RequestParam("password") String password , HttpServletRequest request,  String ... alredyLoggedin) {
			public ModelAndView voteToCandidate(Integer candidateId, Integer voterId, HttpServletRequest request) {
			
			ModelAndView mv= new ModelAndView(); 
			
			HttpSession session = request.getSession();
			Optional<CandidateData> candidateData = candidateService.findById(candidateId);
			CandidateData cData = candidateData.orElse(null);
			VoterData voterData = (VoterData) session.getAttribute("voterData") ;
			if(voterData==null) {
				Optional<VoterData> votrData = voterService.findById(voterId);
				voterData =votrData.orElse(null);
			}
			
			voterData.setCandidateData(cData);
			
			voterService.saveVoter(voterData); 
			
			UserData userData =(UserData)request.getAttribute("userData");
			GovernorateData governorateData = (GovernorateData)request.getAttribute("governorateData");
			ConstituencyData constituencyData =(ConstituencyData)request.getAttribute("constituencyData");
			
			
			request.setAttribute("userData", userData);
			request.setAttribute("governorateData", governorateData);
			request.setAttribute("constituencyData", constituencyData);
			request.setAttribute("candidateData", cData);
			
//			mv.setViewName("welcomevoter");
			mv.setViewName("successfullyvoted"); 
			return mv;
		}
		@GetMapping (value = "/cancelCandidate")  
		//public ModelAndView login(@RequestParam("userName")  String userName, @RequestParam("password") String password , HttpServletRequest request,  String ... alredyLoggedin) {
		public ModelAndView cancelCandidate(Integer candidateId, Integer voterId, HttpServletRequest request) {
			
			ModelAndView mv= new ModelAndView();
			
			HttpSession session = request.getSession();
			Optional<CandidateData> candidateData = candidateService.findById(candidateId);
			CandidateData cData = candidateData.orElse(null);
			VoterData voterData = (VoterData) session.getAttribute("voterData") ;
			
			if(voterData==null) {
				Optional<VoterData> vd = voterService.findById(voterId);
				voterData =vd.orElse(null);
			}
			
			voterData.setCandidateData(null);
			
			voterService.saveVoter(voterData); 
			
			UserData userData =(UserData)request.getAttribute("userData");
			GovernorateData governorateData = (GovernorateData)request.getAttribute("governorateData");
			ConstituencyData constituencyData =(ConstituencyData)request.getAttribute("constituencyData");
			
			
			request.setAttribute("userData", userData);
			request.setAttribute("governorateData", governorateData);
			request.setAttribute("constituencyData", constituencyData);
			request.setAttribute("candidateData", cData);
			
//			mv.setViewName("welcomevoter");
			mv.setViewName("successfullyvoted"); 
			return mv;
		}
		
		//1258
//		public static void main(String[] args) {
//			
//			String str="abcde";
//			System.out.println(str);
//			System.out.println(str.substring(0,1).toUpperCase()); 
//			String str2 = str.replace(str.substring(0,1), str.substring(0,1).toUpperCase());
//			System.out.println(str2);
//			
//		}
		
		public void workAround() {
			
			UserData usrdta = new UserData();  
			usrdta.setUserName("Mosa1"); 
			usrdta.setPassword("Mosa1");
			UserData userData = genericService.findUser(usrdta);
			VoterData voterData =   userData.getVData();
//			CandidateData candidateData =   userData.getCandidateData();
 
			
			GovernorateData governorateData = voterData.getGovernorateData();
			ConstituencyData constituencyData = voterData.getConstituencyData();
			
			List<CandidateData> candidateDataList = candidateService.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
			System.out.println("candidateDataList  ="+candidateDataList );
		}
		
		@GetMapping("/listOfCandidatesPerDistrict")
		public ModelAndView listOfCandidatesPerDistrict(Long governorateId,String location, Integer constituencyId, HttpServletRequest request) {
			
//			workAround();
			
			ModelAndView mv= new ModelAndView();
			
			HttpSession session = request.getSession();
			//session.invalidate();
			
			GovernorateData governorateData = new GovernorateData();
			governorateData.setId(governorateId);
			ConstituencyData constituencyData =  new ConstituencyData();
			constituencyData.setId(constituencyId);
			
			List<CandidateData> candidateDataList = candidateService.findAllByGovernorateDataAndConstituencyData(governorateData, constituencyData);
			
			
			session.setAttribute("governorateArabicName", null);	
			session.setAttribute("constituencyArabicName", null);
			
			if(candidateDataList!=null && candidateDataList.size()>0) {
				String governorateArabicName = null;
				if(candidateDataList.get(0).getGovernorateData()!=null) {
					governorateArabicName =candidateDataList.get(0).getGovernorateData().getArabicName();
				}
				String constituencyArabicName = null;
				if(candidateDataList.get(0).getConstituencyData()!=null) {
					constituencyArabicName=candidateDataList.get(0).getConstituencyData().getArabicName();
				}
				
				session.setAttribute("governorateArabicName", governorateArabicName);	
				session.setAttribute("constituencyArabicName", constituencyArabicName);
					
					for(CandidateData cndidteData: candidateDataList ) {
						cndidteData.setNumberOfVotes(voterService.findNumberOfVotesByCandidateId(cndidteData.getId()));
						if(cndidteData.getImageData()!=null) {
							byte[] encodeBase64 = Base64.encodeBase64(cndidteData.getImageData());
							String base64Encoded = null;
							try {
								base64Encoded = new String(encodeBase64, "UTF-8");
							} catch (UnsupportedEncodingException e) {
								e.printStackTrace();
							}
							cndidteData.setBase64image(base64Encoded);
						}
					}
				
			}else {
				
//				String governorateArabicName = null;
//				String constituencyArabicName = null;
//				GovernorateData governorateData = genericService.findAllGovernorateDataList();
//				session.setAttribute("governorateArabicName", governorateArabicName);	
//				session.setAttribute("constituencyArabicName", constituencyArabicName);
			}
			
			
			session.setAttribute("candidateDataList", candidateDataList);
			session.setAttribute("location", location);
			
//			if(candidateDataList==null || candidateDataList.size()==0) {
//
//				candidateDataList.add(new CandidateData());
//				
//					mv.addObject("errorLoginMessage", "لا يوجد حاليا قائمه للمرشحين في المدينه والمنطقه التي تم اختيارهما والسبب لم يقوم اي مرشح بتسجيل اسمه في هذه المنطقه بعد");
//					mv.setViewName("home");
//
//			}else {
				//mv.setViewName("ammanfirstdistrict");
				mv.setViewName("listofcandidatesperdistrict");				
				
//			}
			
			
			
			
			return mv;
		}
		
}

