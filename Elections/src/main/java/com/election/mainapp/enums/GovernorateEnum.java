package com.election.mainapp.enums;

import java.util.HashMap;
import java.util.Map;



public class GovernorateEnum 
{
    
	public final static Map<String, Integer> GOVERNORATE_ENUM = buildMap();
    

    
    private  final static Map<String, Integer> buildMap() {
    	
    	HashMap<String, Integer> mapto = new HashMap<String, Integer>();
        mapto.put("Amman", 1);
        mapto.put("Irbid", 2);
        mapto.put("Balqa", 3);
        mapto.put("Karak", 4);
        mapto.put("Maan", 5);
        mapto.put("Zarqa", 6);
        mapto.put("Al-Mafraq", 7);
        mapto.put("At-Tafilah", 8);
        mapto.put("Madaba", 9);
        mapto.put("Jerash", 10);
        mapto.put("Ajloun", 11);
        mapto.put("Aqaba", 12); 
        mapto.put("Badia", 13); 
        
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
