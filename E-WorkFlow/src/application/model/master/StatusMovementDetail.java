package application.model.master;

public class StatusMovementDetail {

	public String name_not_insert = "|name_not_insert|";
	private int id;
	private int head_id;//status_movement
	private String discription;
	
    private String timeadd_date; 
    private String timeadd_time; 
    private String timeadd_user; 
    private String timeupd_date; 
    private String timeupd_time; 
    private String timeupd_user; 
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getHead_id() {
		return head_id;
	}

	public void setHead_id(int head_id) {
		this.head_id = head_id;
	}
	
	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public String getTimeadd_date() {
		return timeadd_date;
	}

	public void setTimeadd_date(String timeadd_date) {
		this.timeadd_date = timeadd_date;
	}

	public String getTimeadd_time() {
		return timeadd_time;
	}

	public void setTimeadd_time(String timeadd_time) {
		this.timeadd_time = timeadd_time;
	}

	public String getTimeadd_user() {
		return timeadd_user;
	}

	public void setTimeadd_user(String timeadd_user) {
		this.timeadd_user = timeadd_user;
	}

	public String getTimeupd_date() {
		return timeupd_date;
	}

	public void setTimeupd_date(String timeupd_date) {
		this.timeupd_date = timeupd_date;
	}

	public String getTimeupd_time() {
		return timeupd_time;
	}

	public void setTimeupd_time(String timeupd_time) {
		this.timeupd_time = timeupd_time;
	}

	public String getTimeupd_user() {
		return timeupd_user;
	}

	public void setTimeupd_user(String timeupd_user) {
		this.timeupd_user = timeupd_user;
	}

}
