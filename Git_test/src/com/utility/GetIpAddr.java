package com.utility;
import java.net.InetAddress;
import java.net.UnknownHostException;

public class GetIpAddr {
	public static void main(String[] args) {
		
		try{
			
			String ipAddr = InetAddress.getLocalHost().getHostAddress();
			System.out.println(ipAddr);
		
		}catch(UnknownHostException e){
			System.out.println(e);
		}catch (Exception ae) {
			System.out.println(ae);
		}
		
		
	}
}
