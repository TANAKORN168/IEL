package application.model.master;

public class StatusInfo {

	private Integer id;
	private String main_code;
	private String status_code;
	private String status_name;
	private String discription;
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
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

}
