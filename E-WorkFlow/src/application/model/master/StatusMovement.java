package application.model.master;

public class StatusMovement {

	public String name_not_insert = "|name_not_insert|";
	private int id;
	private int head_id;
	private int users_id;
	private String date_time;
	
	private String head_class;
	
	private String status_code;
	private String status_name;
	private int level;
	
	private String users_name;
	private String users_position;
	private String users_url_pic;
	private String users_url_sig;
	
	private boolean must_approve;//ต้องการอนุมัติ
	private boolean approve;//การอนุมัติ
	private boolean stamp;//ยืนยันการอนุมัติ
	private boolean send_approve;//ส่งให้ยืนยัน
	
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

	public String getHead_class() {
		return head_class;
	}

	public void setHead_class(String head_class) {
		this.head_class = head_class;
	}

	public String getStatus_code() {
		return status_code;
	}

	public void setStatus_code(String status_code) {
		this.status_code = status_code;
	}

	public String getStatus_name() {
		return status_name;
	}

	public void setStatus_name(String status_name) {
		this.status_name = status_name;
	}

	public int getUsers_id() {
		return users_id;
	}

	public void setUsers_id(int users_id) {
		this.users_id = users_id;
	}

	public String getUsers_name() {
		return users_name;
	}

	public void setUsers_name(String users_name) {
		this.users_name = users_name;
	}

	public String getUsers_position() {
		return users_position;
	}

	public void setUsers_position(String users_position) {
		this.users_position = users_position;
	}

	public String getUsers_url_pic() {
		return users_url_pic;
	}

	public void setUsers_url_pic(String users_url_pic) {
		this.users_url_pic = users_url_pic;
	}

	public String getUsers_url_sig() {
		return users_url_sig;
	}

	public void setUsers_url_sig(String users_url_sig) {
		this.users_url_sig = users_url_sig;
	}

	public String getDate_time() {
		return date_time;
	}

	public void setDate_time(String date_time) {
		this.date_time = date_time;
	}

	public boolean isMust_approve() {
		return must_approve;
	}

	public void setMust_approve(boolean must_approve) {
		this.must_approve = must_approve;
	}

	public boolean isApprove() {
		return approve;
	}

	public void setApprove(boolean approve) {
		this.approve = approve;
	}

	public boolean isStamp() {
		return stamp;
	}

	public void setStamp(boolean stamp) {
		this.stamp = stamp;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
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

	public boolean isSend_approve() {
		return send_approve;
	}

	public void setSend_approve(boolean send_approve) {
		this.send_approve = send_approve;
	}

}
