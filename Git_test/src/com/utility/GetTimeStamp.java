package com.utility;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.TimeZone;

public class GetTimeStamp {

		private String timestamp(){
			String timestamp = null;
			Calendar cal = Calendar.getInstance();
			DateFormat dfmt = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			dfmt.setTimeZone(TimeZone.getTimeZone("GMT"));
			timestamp = dfmt.format(cal.getTime());
			return timestamp;
		}
		
		public static void main(String[] args) {
			GetTimeStamp ts = new GetTimeStamp();
			String time = ts.timestamp();
			System.out.println(time);
		}
}
