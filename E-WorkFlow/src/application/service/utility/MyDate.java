/*
 * Created on Jan 24, 2005
 *
 * TODO To change the template for this generated file go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
package application.service.utility;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.List;
import java.util.Locale;

import org.apache.commons.lang3.StringUtils;

/**
 * @author root
 *
 * TODO To change the template for this generated type comment go to
 * Window - Preferences - Java - Code Style - Code Templates
 */
public class MyDate {
	
	//use for start search bill every new year.
	static public String  NSS_YEAR_MONTH_DAY = "20061225"; 
	
	static public String STOD(String dtos){
		String dd,mm,yyyy;
		if (StringUtils.isBlank(dtos)){
			return "";
		}
		dd=dtos.substring(6,8);
		mm=dtos.substring(4,6);
		int x=Integer.valueOf(dtos.substring(0,4)).intValue()+543;
		yyyy=String.valueOf(x);
		return (dd+'/'+mm+'/'+yyyy);		
	}
	
	static public String DTOS(String stod){
		String dd,mm,yyyy;
		if (StringUtils.isBlank(stod)){
			return "";
		}
		dd=stod.substring(0,2);
		mm=stod.substring(3,5);
		int x=Integer.valueOf(stod.substring(6,10)).intValue()-543;
		yyyy=String.valueOf(x);
	return (yyyy+mm+dd);		
	}
	
	static public GregorianCalendar String2GregorianCalendar(String dtos){
		int year = ( new Integer(StringUtils.left(dtos,4))).intValue();
		int month = ( new Integer(StringUtils.substring(dtos,4,6))).intValue()-1;
		int day = ( new Integer(StringUtils.right(dtos,2))).intValue();
		return 	new GregorianCalendar(year,month,day);

	}
	static public Date String2Date(String dtos){
		return String2GregorianCalendar(dtos).getTime(); 
	}
	
	static public String Date2String(Date date){
    	return new SimpleDateFormat("yyyyMMdd",new Locale("en")).format(date);
	}
	
	static public String GetCurrentDate(){
    	return new SimpleDateFormat("yyyyMMdd",new Locale("en")).format(new Date());
	}
	
	static public String GetCurrentTime(){
    	return new SimpleDateFormat("HH:mm:ss",new Locale("en")).format(new Date());
	}
	
	/*
	 * return "" = empty time 
	 */
	static public String getTime8Digit(String time){
		String time_tmp = StringUtils.defaultString(time).trim();
		String time_use = "";
		if (time_tmp.length()==0){
		} else if (StringUtils.indexOf(time_tmp, "-")>=0){
		} else if (StringUtils.indexOf(time_tmp, ":")<0){
		} else if (time_tmp.length()==8){
			time_use = time_tmp;
		} else if (time_tmp.length()==5){
			time_use = time_tmp +":00";
		} else if (time_tmp.length()==3 || time_tmp.length()==4){
			String hh = StringUtils.substringBefore(time_tmp, ":");
			String mm = StringUtils.substringAfter(time_tmp, ":");
			if (hh.trim().length()==1){
				hh = "0"+hh;
			}else if (hh.trim().length()==0){
				hh= "00";
			}
			if (mm.trim().length()==1){
				mm = "0"+hh;
			}else if (mm.trim().length()==0){
				mm= "00";
			}
			time_use = hh+":"+mm+":00";
		}
    	return time_use;
	}

	static public long Compare(String date1,String date2){
		Date d1 = String2Date(date1);
		Date d2 = String2Date(date2);
		return  ( ( d1.getTime()-d2.getTime() ) / (24*60*60*1000) );
	}

	static public String Adjust(String date,int day){
//		System.out.println("---day="+day);
//		System.out.println("---String2Date="+new Date( String2Date(date).getTime() ) );
		long tmp = (24*60*60*1000) ;
//		System.out.println("---tmp="+tmp);
//		System.out.println("---day cal="+(long) (day*tmp) );
		return  Date2String(new Date( String2Date(date).getTime() + ((long) (day*tmp) ) ));
	}
	/* return à¸ˆà¸²à¸� à¸ˆà¸±à¸™à¸—à¸£à¹Œ à¹€à¸›à¹‡à¸™ à¸ˆ.*/
	static public String DayOfWeekText(String date,Locale locale){
		if (StringUtils.isBlank(date)){
			return "";
		}
		return new SimpleDateFormat("EEE",locale).format(String2Date(date));		
	}
	
	static public String DayOfWeekFullText(String date,Locale locale){
//		System.out.println("lang="+locale.getLanguage());
//		System.out.println("country="+locale.getCountry());
//		System.out.println("var="+locale.getVariant());
		if (StringUtils.isBlank(date)){
			return "";
		}
		String txt = new SimpleDateFormat("EEEE",locale).format(String2Date(date));
		if ("TH".equals(locale.getLanguage().toUpperCase())){
			txt = StringUtils.substring(txt,3,99);
		}
		return txt;
	}
	
	static public boolean IsDate(String s){
		String tmp = s.trim();
		if (tmp.length() != 10) {
			return false;
		}
		char[] tmp2 = tmp.toCharArray();
		for (int i=0;i<tmp2.length;i++){
			char c = tmp2[i];
			switch (i) {
			case 2:
			case 5:
				if ( c !=  "/".toCharArray()[0]) {
					return false;
				}
				break;
			default:
				if ( c != '0' && c != '1'  && c != '2' && c != '3' && c != '4' && c != '5' && c != '6' && c != '7' && c != '8' && c != '9' ){
					return false;
				}	
				break;
			}
		}
		return true;
	}

	static public String STOD_EN(String dtos){
		String dd,mm,yyyy;
		if (StringUtils.isBlank(dtos)){
			return "";
		}
		dd=dtos.substring(6,8);
		mm=dtos.substring(4,6);
		int x=Integer.valueOf(dtos.substring(0,4)).intValue();
		yyyy=String.valueOf(x);
	return (dd+'/'+mm+'/'+yyyy);		
	}
	
	static public String DTOS_EN(String stod_en){
		String dd,mm,yyyy;
		if (StringUtils.isBlank(stod_en)){
			return "";
		}
		dd=stod_en.substring(0,2);
		mm=stod_en.substring(3,5);
		int x=Integer.valueOf(stod_en.substring(6,10)).intValue();
		yyyy=String.valueOf(x);
	return (yyyy+mm+dd);		
	}
	
	static public String SubDate(String date,int day){
		long tmp = (24*60*60*1000) ;
		return  Date2String(new Date( String2Date(date).getTime() - ((long) (day*tmp) ) ));
	}

	static public String StartMonth(String dtos){
		int year = ( new Integer(StringUtils.left(dtos,4))).intValue();
		int month = ( new Integer(StringUtils.substring(dtos,4,6))).intValue()-1;
		int day = 1;
		Date date = new GregorianCalendar(year,month,day).getTime();
		
    	return Date2String(date);
	}
	
	static public String EndMonth(String dtos){
		int year = ( new Integer(StringUtils.left(dtos,4))).intValue();
		int month = ( new Integer(StringUtils.substring(dtos,4,6))).intValue()-1;
		int day = 1;
		month++;
		if (month >12) {
			month = 1;
			year++;
		}
		Date date = new GregorianCalendar(year,month,day).getTime();
		
    	return Adjust( Date2String(date) , -1);
	}
	
	/*
	 * @tae 
	 * return new Object[]{start_date,end_date);
	 */
	static public String[] getStartEndDate(String start_month_str, String start_year_th_str , String end_month_str , String end_year_th_str){
		String start_year_str = String.valueOf(new Integer(start_year_th_str)
				.intValue() - 543);
		String end_year_str = String.valueOf(new Integer(end_year_th_str)
				.intValue() - 543);

		String start_date = start_year_str.trim() + start_month_str + "01";
		String end_date = MyDate.EndMonth(end_year_str.trim() + end_month_str
				+ "01");
		return new String[]{start_date,end_date};
		
	}

	static public String[] genDateArray(String start_date , String end_date){
		List<String> list = new ArrayList<String>();
		
		String tmp_date = new String(start_date);
		while (tmp_date.compareTo(end_date)<=0){
			list.add(tmp_date);
			tmp_date = MyDate.Adjust(tmp_date, 1);
		}
		
		
		return (String[]) list.toArray(new String[list.size()]);
	}
	/*
	 * @tae 
	 * return dd/mm/yy
	 */
	static public String getDateShort(String date_long){
		if (StringUtils.isBlank(date_long)) return "";
		
		return StringUtils.left(date_long , 6)+StringUtils.right(date_long ,2);
		
	}
	
	static public long minuteDiff(String date1 , String time1 , String date2 , String time2){
		
/*		System.out.println("=========================");
		System.out.println("------------ date1="+date1);
		System.out.println("------------ time1="+time1);
		System.out.println("------------ date2="+date2);
		System.out.println("------------ time2="+time2);
		System.out.println("=========================");
*/
		String hour1 = StringUtils.substringBefore(time1 , ":");
		String minute1 = StringUtils.substringBetween(time1 , ":");

		String hour2 = StringUtils.substringBefore(time2 , ":");
		String minute2 = StringUtils.substringBetween(time2 , ":");
		
		long day_minute_diff = MyDate.Compare(date1 , date2)*24*60;
		long hour_minute_diff = (new Long(hour1).longValue() - new Long(hour2).longValue())*60 ;
		long minute_diff = new Long(minute1).longValue() - new Long(minute2).longValue() ;
		return (day_minute_diff + hour_minute_diff + minute_diff);
	}
	
	static public String getTimeFormatFromMinute(long numminute){
		
		long hh = Math.abs(numminute)/60;
		long mm = Math.abs(numminute)%60;
		String str = new DecimalFormat("00").format(hh) +":" +new DecimalFormat("00").format(mm);
		
		if (numminute<0) str = "-"+str;
		
		/* @return hh:mm
		 * 
		 * */
		return str;	
	}
	
	static public String getMonth(String dtos){
		
		if(StringUtils.isBlank(dtos)) return "";
		
		return StringUtils.right(StringUtils.left(dtos,6),2);
		
	}
	
	static public String getMonthName(String dtos,Locale locale){
		
		if(StringUtils.isBlank(dtos)) return "";
		
		Date date = MyDate.String2Date(dtos);
		return new SimpleDateFormat("MMMM",locale).format(date);
		
	}
	
	static public String getYear(String dtos,Locale locale){
		
		if(StringUtils.isBlank(dtos)) return "";
		
		Date date = MyDate.String2Date(dtos);
		return new SimpleDateFormat("yyyy",locale).format(date);
		
	}
	
	static public String getYear_th(String dtos){
		
		return StringUtils.right(MyDate.STOD(dtos), 4);
		
	}
	
	public static void main(String[] args) {
		String date_th = "20/09/2556";
		String date2_th = "02/10/2556";
		SimpleDateFormat df = new SimpleDateFormat("dd/MM/yyyy",new Locale("th","th","th"));
		Date date = null;
		try {
			date = df.parse(date_th);
		} catch (ParseException e){
			e.printStackTrace();
			return;
		}
		String dtos = MyDate.DTOS(date_th);
		String dtos2 = MyDate.DTOS(date2_th);
		System.out.println("--------dtos="+dtos);
		System.out.println("--------dtos2="+dtos2);
		System.out.println("--------compare="+MyDate.Compare(dtos2, dtos));
		Date date2 = MyDate.String2Date(dtos);
		Calendar calen = new GregorianCalendar(); // MyDate.String2GregorianCalendar(dtos);
		calen.setTime(date2);
		System.out.println("--------day of week="+calen.get(Calendar.DAY_OF_WEEK));
		System.out.println("--------day of month="+calen.get(Calendar.DAY_OF_MONTH));
		System.out.println("--------month="+calen.get(Calendar.MONTH));
		System.out.println("--------year="+calen.get(Calendar.YEAR));
		
		System.out.println("time " + GetCurrentTime());
		
		System.out.println("month number= " + getMonth(dtos));
		
		
		String number0 = "0123456";
		String number1 = "123456";
		String number2 = "0123456.00";
		String number3 = "J0123456";
		System.out.println("number0 " + StringUtils.isNumeric(number0));
		System.out.println("number1 " + StringUtils.isNumeric(number1));
		System.out.println("number2 " + StringUtils.isNumeric(number2));
		System.out.println("number3 " + StringUtils.isNumeric(number3));
		
		System.out.println(MyDate.STOD(MyDate.StartMonth(MyDate.Adjust(MyDate.GetCurrentDate(),-1))));
		System.out.println(MyDate.STOD(MyDate.Adjust(MyDate.GetCurrentDate(),-1)));
	}

	public static String[] getStartEndYear(String dtos) {
		String year = StringUtils.left(dtos, 4);
		String start_year = year+"0101";
		String end_year = year+"1231";
		return new String[]{start_year,end_year};
	}
	
	
}
