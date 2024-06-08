package com.election.mainapp.OTP;

import java.util.Random;

public class OTP {

	
	public static String generateOTP(int optLength) {

		Random random  = new Random();
		StringBuilder sb = new StringBuilder();
		for (int i = 0; i < optLength; i++) {
			sb.append(random.nextInt(10));
		}
		
		String opt = sb.toString();
		
		return opt;
		
	}
}
