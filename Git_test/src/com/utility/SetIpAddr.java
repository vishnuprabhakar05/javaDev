package com.utility;

public class SetIpAddr {

	public static void main(String[] args) {
		GetIpAddr ip = new GetIpAddr();
		String setIP = ip.getIpAddr();
		System.out.println("The IP Address is : " + setIP);
	}

}
