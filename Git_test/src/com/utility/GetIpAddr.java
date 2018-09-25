package com.utility;
import java.net.InetAddress;
import java.net.UnknownHostException;

public class GetIpAddr {
	public String getIpAddr(){
		
		String ipAddr = "";
		
		try{
			ipAddr = InetAddress.getLocalHost().getHostAddress();
			
		}catch(UnknownHostException he){
			System.out.println(he);
		}
		catch(Exception e){
			System.out.println(e);
		}
		return ipAddr;
	}

}
