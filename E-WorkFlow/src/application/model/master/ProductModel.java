package application.model.master;

public class ProductModel {
	private int id;
	private String code;
	private String name;
	private int brand_id;
	private String brand_name;

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

	public int getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public ProductModel(int id, int brand_id, String code, String name) {
		super();
		this.id = id;
		this.brand_id = brand_id;
		this.code = code;
		this.name = name;
	}

}
