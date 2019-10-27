package application.model.master;

public class StatusMovement {

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
	
	private boolean approve;//ต้องการอนุมัติ
	private boolean stamp;//ยืนยันการอนุมัติ

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

}
