package com.election.mainapp.OTP;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import javax.net.ssl.HttpsURLConnection;
import java.util.*; 

public class SendOTP {

	public static void sendOTP(String message , String number , String apiKey)
	{
		try
		{
		String sendId="FSTSMS";
		String language="english";
		String route="p";
		
		message=URLEncoder.encode(message,"UTF-8");    //Important Step
		
		String myUrl="https://www.fast2sms.com/dev/bulkauthorization="+apiKey+
				"& sender_id="+sendId+"&message="+message+"&language="+language+
				"& route="+route+"&numbers="+number;

		URL url=new URL(myUrl);
		HttpsURLConnection con= (HttpsURLConnection)url.openConnection();
		
		con.setRequestMethod("GET");
		
		con.setRequestProperty("User-Agent","Mozilla/5.0");
		con.setRequestProperty("cache-control", "no-cache");
		
		int responseCode=  con.getResponseCode();
		
		StringBuffer response=new StringBuffer();
		
		BufferedReader br=new BufferedReader(new InputStreamReader(con.getInputStream()));
		
		while(true)
		{
			String line=br.readLine();
			
			if(line==null)
			{
				break;
			}
			
			response.append(line);
		}
		
		System.out.println(response);
		
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
	}

        public static void main(String[] args) 
	{
		   System.out.println("Program Started....");
		   
		   OTP otp=new OTP();
		   String otpmessage=otp.generateOTP(5);
		   System.out.println( "Generate OTP : "+otpmessage);
		   
		   String apiKey="USE YOUR API-KEY HERE";
		   //String number="USE YOUR MOBILE NUMBER HERE";
		   String number="USE YOUR MOBILE NUMBER HERE";
		   
		   sendOTP("Hey this message is send by MuradAli using Java Code. Your OTP is                                     :"+otpmessage,number,apiKey);
		   
	}
	
}
