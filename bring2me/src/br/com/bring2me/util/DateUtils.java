package br.com.bring2me.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtils {
	
	public Date stringToDate(String date) {
		
		try {
			
			return new SimpleDateFormat("dd/MM/yyyy").parse(date);
		} catch (Exception e) {
			//TO DO implementar logger 
		}
		return null;
	}
	
	public String dateToString(Date d) {
		 SimpleDateFormat formatter = new SimpleDateFormat("MM/dd/yyyy");  
		return formatter.format(d);
	}
	
	public Date currentDate() {
		return new Date(System.currentTimeMillis());
	}

}
