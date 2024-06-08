package com.election.mainapp.enums;

import java.util.HashMap;
import java.util.Map;



public class ConstituencyEnum 
{
    
	public final static Map<String, Integer> CONSTITUENCY_ENUM = buildMap();
    

    
    private  final static Map<String, Integer> buildMap() {
    	
    	HashMap<String, Integer> mapto = new HashMap<String, Integer>();
        mapto.put("Amman_First_Constituency", 1);
        mapto.put("Amman_Second_Constituency", 2);
        mapto.put("Amman_Third_Constituency", 3);
        
        mapto.put("Irbid_First_Constituency", 8);
        mapto.put("Irbid_Second_Constituency", 9);
        
        mapto.put("Balqa_First_Constituency", 17);
        
        mapto.put("Karak_First_Constituency", 21);
        mapto.put("Maan_First_Constituency", 28);
        mapto.put("Zarqa_First_Constituency", 31);
        mapto.put("Al-Mafraq_First_Constituency", 35);
        mapto.put("At-Tafilah_First_Constituency", 36);
        mapto.put("Madaba_First_Constituency", 38);
        mapto.put("Jerash_First_Constituency", 40);
        mapto.put("Ajloun_First_Constituency", 41);
        mapto.put("Aqaba_First_Constituency", 43); 
        mapto.put("Badia_North_Bedouin", 44); 
        mapto.put("Badia_Mediation_Bedouin", 45); 
        mapto.put("Badia_South_Bedouin", 46); 
        
        return mapto;
        
    }
	
//    public static Map < String, String > arrayToMap(String[][] array) {
//        Map < String, String > map = new HashMap < String, String > ();
//
//        for (String[] pair: array) {
//            if (pair.length > 1) {
//                // got a pair, add to map
//                map.put(pair[0], pair[1]);
//            }
//        }
//
//        return map;
//    }
	
}
