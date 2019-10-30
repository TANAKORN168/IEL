package application.model.master;

public class StatusInfo {

	public String name_not_insert = "|name_not_insert|";
	private int id;
	private String main_code;
	private String status_code;
	private String status_name;
	private String discription;
	private boolean must_approve;//ต้องการอนุมัติ
	private int level;
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getMain_code() {
		return main_code;
	}

	public void setMain_code(String main_code) {
		this.main_code = main_code;
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

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public boolean isMust_approve() {
		return must_approve;
	}

	public void setMust_approve(boolean must_approve) {
		this.must_approve = must_approve;
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

}
