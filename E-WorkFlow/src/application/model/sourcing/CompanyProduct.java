package application.model.sourcing;

public class CompanyProduct {
	
	public String name_not_insert = "|name_not_insert|";
	private int id;
	private String code = "";
	private String type_name = "";
	private String group_name = "";
	private String kind_name = "";
	private Double price = 0.00;
	private String barcode_ref = "";
	private String name_ref = "";
    private String timeadd_date = "";
    private String timeadd_time = "";
    private String timeadd_user = "";
    private String timeupd_date = "";
    private String timeupd_time = "";
    private String timeupd_user = "";
    
    public CompanyProduct() {
    	
    }
    
	public CompanyProduct(String code, String type_name, String group_name, String kind_name, Double price,
			String barcode_ref, String name_ref) {
		this.code = code;
		this.type_name = type_name;
		this.group_name = group_name;
		this.kind_name = kind_name;
		this.price = price;
		this.barcode_ref = barcode_ref;
		this.name_ref = name_ref;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getType_name() {
		return type_name;
	}

	public void setType_name(String type_name) {
		this.type_name = type_name;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public String getKind_name() {
		return kind_name;
	}

	public void setKind_name(String kind_name) {
		this.kind_name = kind_name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public String getBarcode_ref() {
		return barcode_ref;
	}

	public void setBarcode_ref(String barcode_ref) {
		this.barcode_ref = barcode_ref;
	}

	public String getName_ref() {
		return name_ref;
	}

	public void setName_ref(String name_ref) {
		this.name_ref = name_ref;
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
