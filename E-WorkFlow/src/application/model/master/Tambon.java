package application.model.master;

public class Tambon {
	private int id;
	private int province_id;
	private int amphur_id;
	private String province_name;
	private String amphur_name;
	private String code;
	private String name;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getProvince_id() {
		return province_id;
	}

	public void setProvince_id(int province_id) {
		this.province_id = province_id;
	}

	public int getAmphur_id() {
		return amphur_id;
	}

	public void setAmphur_id(int amphur_id) {
		this.amphur_id = amphur_id;
	}

	public String getProvince_name() {
		return province_name;
	}

	public void setProvince_name(String province_name) {
		this.province_name = province_name;
	}

	public String getAmphur_name() {
		return amphur_name;
	}

	public void setAmphur_name(String amphur_name) {
		this.amphur_name = amphur_name;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Tambon(int id, int province_id, int amphur_id, String code, String name) {
		super();
		this.id = id;
		this.province_id = province_id;
		this.amphur_id = amphur_id;
		this.code = code;
		this.name = name;
	}

}
