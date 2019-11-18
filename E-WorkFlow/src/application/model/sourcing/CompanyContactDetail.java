package application.model.sourcing;

public class CompanyContactDetail {
	
	public String name_not_insert = "|name_not_insert|row_id_del|";
	private int id;
	private int head_id;//company_contact_id
	private String name = "";
	private String position = "";
	private String tel = "";
	private String email = "";
	private boolean approve;
    private String timeadd_date = "";
    private String timeadd_time = "";
    private String timeadd_user = "";
    private String timeupd_date = "";
    private String timeupd_time = "";
    private String timeupd_user = "";
    
    private String row_id_del = "";
    
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

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isApprove() {
		return approve;
	}

	public void setApprove(boolean approve) {
		this.approve = approve;
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

	public String getRow_id_del() {
		return row_id_del;
	}

	public void setRow_id_del(String row_id_del) {
		this.row_id_del = row_id_del;
	}

}
