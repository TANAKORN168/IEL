package application.service.utility;

import java.io.Serializable;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/** @author Hibernate CodeGenerator */
public class MyTimestamp implements Serializable {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/** nullable persistent field */
    private String date;

    /** nullable persistent field */
    private String time;

    /** nullable persistent field */
    private String user;
    
    private String text;

    /** full constructor */

    /** default constructor */
    public MyTimestamp() {
    }
    public MyTimestamp(String d,String t,String u) {
    	this.date=d;
    	this.time=t;
    	this.user=u;
    	this.text =  MyDate.STOD(this.date) +"  " +  this.time + "  " + this.user;
    }
    
    public MyTimestamp(String user) {
    	Date d = new Date();
    	this.date=new SimpleDateFormat("yyyyMMdd",new Locale("en")).format(d);
    	this.time=new SimpleDateFormat("HH:mm:ss").format(d);
    	this.user=user;
    	this.text =  MyDate.STOD(this.date) +"  " +  this.time + "  " + this.user;
    }


	/**
	 * @return Returns the date.
	 */
	public String getDate() {
		return date;
	}
	/**
	 * @param date The date to set.
	 */
	public void setDate(String date) {
		this.date = date;
	}
	/**
	 * @return Returns the time.
	 */
	public String getTime() {
		return time;
	}
	/**
	 * @param time The time to set.
	 */
	public void setTime(String time) {
		this.time = time;
	}
	/**
	 * @return Returns the user.
	 */
	public String getUser() {
		return user;
	}
	/**
	 * @param user The user to set.
	 */
	public void setUser(String user) {
		this.user = user;
    	this.text =  MyDate.STOD(this.date) +"  " +  this.time + "  " + this.user;
	}
	public String getText() {
    	this.text =  MyDate.STOD(this.date) +"  " +  this.time + "  " + this.user;
		return this.text;
	}
	public void setText(String text) {
		this.text = text;
	}
}
