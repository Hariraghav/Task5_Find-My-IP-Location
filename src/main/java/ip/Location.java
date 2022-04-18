package ip;

import java.util.*;

import java.io.*;
import java.net.*;


public class Location {
	public LocationDetails getLoc(String ip) {
		ip=ip.trim();
		LocationDetails l=new LocationDetails();
		URL url;
		try {
				url = new URL("https://iplocation.zoho.com/getipinfo?ip="+ip+"&type=text");
				BufferedReader br = new BufferedReader(new InputStreamReader(url.openStream()));
				String str = "";
				String temp="";
				String loc_details[];	
				while (null != (str = br.readLine())) {
					temp=str;
					
				}	
			 	loc_details=temp.split(";");
				int length=loc_details.length;
		
				if(length==11){
					
					l.setIp(ip);
				
					if(loc_details[0]!=null){
						l.setCity(loc_details[0]);
					}
					if(loc_details[1]!=null){
						l.setZipcode(loc_details[1]);
					}
					
					if(loc_details[2]!=null){
						l.setLongitude(loc_details[2]);
					}
					
					
					if(loc_details[3]!=null){
						l.setIsp_name(loc_details[3]);
					}
					
					if(loc_details[4]!=null){
						l.setCountry(loc_details[4]);
					}
					
					if(loc_details[5]!=null){
						l.setTimezone(loc_details[5]);
					}
					
					if(loc_details[7]!=null){
						l.setLatitude(loc_details[8]);
					}
					
					
					
					if(loc_details[8]!=null){
						l.setRegion(loc_details[9]);
					}
					if(loc_details[9]!=null){
						l.setCountry_code(loc_details[10]);
					}
								
				}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return l;
	}

	public static void main(String[] args) {
		

}
}
