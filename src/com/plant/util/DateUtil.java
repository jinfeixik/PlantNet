package com.plant.util;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

public class DateUtil {
	
	public  Date getDateAdd(int days){
	    Calendar c = Calendar.getInstance();
	    c.add(Calendar.DAY_OF_MONTH, -days);
	   return c.getTime();
	}
	
	public  List<String> getDaysBetwwen(int days){ //最近几天日期
	    List<String> dayss = new ArrayList<>();
	    Calendar start = Calendar.getInstance();
	    start.setTime(getDateAdd(days));
	    Long startTIme = start.getTimeInMillis();
	    Calendar end = Calendar.getInstance();
	    end.setTime(new Date());
	    Long endTime = end.getTimeInMillis();
	    Long oneDay = 1000 * 60 * 60 * 24l;
	    Long time = startTIme;
	    while (time <= endTime) {
	        Date d = new Date(time);
	        DateFormat df = new SimpleDateFormat("yyyy-MM-dd");
	        //System.out.println(df.format(d));
	        dayss.add(df.format(d));
	        time += oneDay;
	    }
	    return dayss;
	}

}
