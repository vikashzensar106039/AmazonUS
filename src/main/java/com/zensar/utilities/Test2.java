package com.zensar.utilities;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;

import org.apache.commons.lang.math.NumberUtils;
import org.joda.time.LocalDate;

public class Test2 {
	
	public static void main(String args[]) throws Exception {
		String driverPath="C:\\Program Files (x86)\\Windows Application Driver\\WinAppDriver.exe";
		String driverArguments="localhost 4723/wd/hub";
		String runDriverAsAdmin="powershell -Command \"Start-Process '"+driverPath+"' -ArgumentList '"+driverArguments+"' -Verb RunAs\"";
		ProcessBuilder builder=new ProcessBuilder("powershell.exe","-Command","Start-Process","'"+driverPath+"'","-ArgumentList","'"+driverArguments+"'","-Verb RunAs")
		.redirectErrorStream(true);
		Process p;

		p=Runtime.getRuntime().exec(runDriverAsAdmin);
		p.waitFor();
		p=Runtime.getRuntime().exec("cmd /C cmd.exe /K taskkill /IM winappdriver.exe /F");
		BufferedReader r = new BufferedReader(new InputStreamReader(p.getInputStream()));
            String line = r.readLine();
            if (line != null)
            	System.out.println(line);
	}
	
	public static void sortDate() throws ParseException{
		boolean isDatesSortedDesc=true;
		String sourceDates[]=new String[4];
		ArrayList<String> rawDate=new ArrayList<>();
		for(int i=0;i<4;i++){
			
		}
		
		for(int i=0;i<rawDate.size();i++){
			String separateDate[]=rawDate.get(i).split(" ");
			String day= separateDate[0];
			String month= separateDate[1];
			String year=NumberUtils.isDigits(separateDate[separateDate.length-1])?separateDate[separateDate.length-1]:LocalDate.now().getYear()+"";
			sourceDates[i]=day+" "+month+" "+year;
		}
		
		Date dates[]=new Date[4];
		ArrayList<Date> datesBeforeSort=new ArrayList<>();
		ArrayList<Date> datesAfterSort=new ArrayList<>();
		for(int i=0;i<4;i++){
			dates[i]=new SimpleDateFormat("DD MMM yyyy").parse(sourceDates[i]);
			datesBeforeSort.add(new SimpleDateFormat("DD MMM yyyy").parse(sourceDates[i]));
		}
		datesAfterSort=(ArrayList<Date>) datesBeforeSort.clone();
		Arrays.sort(dates);
		Collections.sort(datesAfterSort,Collections.reverseOrder());
		System.out.println(datesBeforeSort);
		System.out.println(datesAfterSort);
		for(int i=0;i<datesBeforeSort.size();i++){
			if(!datesBeforeSort.get(i).equals(datesAfterSort.get(i)))
				isDatesSortedDesc=false;
		}
		
		
		
	}

}
