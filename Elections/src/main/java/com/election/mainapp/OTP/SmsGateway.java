package com.election.mainapp.OTP;

import java.net.URI;
import java.net.URISyntaxException;

//import com.twilio.Twilio;
//import com.twilio.rest.api.v2010.account.Call;
//import com.twilio.type.PhoneNumber;

public class SmsGateway {
//  // Find your Account Sid and Token at twilio.com/user/account
//  //public static final String ACCOUNT_SID = "your_account_sid";
//  public static final String ACCOUNT_SID = "AC32a3c49700934481addd5ce1659f04d2";
//  //public static final String AUTH_TOKEN = "your_auth_token";
//  public static final String AUTH_TOKEN = "{{ auth_token }}";
//
//  public static void main(String[] args) throws URISyntaxException {
//    Twilio.init(ACCOUNT_SID, AUTH_TOKEN);
//
//    //Call call = Call.creator(new PhoneNumber("+14155551212"), new PhoneNumber("+15017250604"),
//    		Call call = Call.creator(new PhoneNumber("+14439794573"), new PhoneNumber("+14439794573"),
//        new URI("http://demo.twilio.com/docs/voice.xml")).create();
//
//    System.out.println(call.getSid());
//  }
}

// 
//import com.twilio.sdk.TwilioRestClient;
//import com.twilio.sdk.TwilioRestException;
//import com.twilio.sdk.resource.factory.MessageFactory;
//import com.twilio.sdk.resource.instance.Message;
//import org.apache.http.NameValuePair;
//import org.apache.http.message.BasicNameValuePair;
//
//import java.util.ArrayList;
//import java.util.List;
//
//public class SmsGateway {
//
//  // Find your Account Sid and Token at twilio.com/user/account
//  public static final String ACCOUNT_SID = "AC32a3c49700934481addd5ce1659f04d2";
//  public static final String AUTH_TOKEN = "{{ auth_token }}";
//
//  public static void main(String[] args) throws TwilioRestException {
//    TwilioRestClient client = new TwilioRestClient(ACCOUNT_SID, AUTH_TOKEN);
//
//    // Build a filter for the MessageList
//    List<NameValuePair> params = new ArrayList<NameValuePair>();
//    params.add(new BasicNameValuePair("Body", "Abdul please?! I show you"));
//    params.add(new BasicNameValuePair("To", "+14159352345"));
//    params.add(new BasicNameValuePair("From", "+14158141829"));
//
//    MessageFactory messageFactory = client.getAccount().getMessageFactory();
//    Message message = messageFactory.create(params);
//    System.out.println(message.getSid());
//  }
//}