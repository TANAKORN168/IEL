package application.model.master;

public class Company {
	private int id;
	private String code;
	private String name;
	private String tax_id;//เลขประจำตัวผู้เสียภาษี
	private String address;
	private String tel;
	private String email;
	private String fax;
	
	public Company() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	public String getTax_id() {
		return tax_id;
	}

	public void setTax_id(String tax_id) {
		this.tax_id = tax_id;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
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

	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}

	public Company(int id, String code, String name, String tax_id, String address,
			String tel, String email, String fax) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.tax_id = tax_id;
		this.address = address;
		this.tel = tel;
		this.email = email;
		this.fax = fax;
	}

}
