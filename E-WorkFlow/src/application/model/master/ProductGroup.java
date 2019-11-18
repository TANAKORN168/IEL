package application.model.master;

public class ProductGroup {
	private int id;
	private String code;
	private String name;
	private int product_type_id;
	private String product_type_name;

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

	public int getProduct_type_id() {
		return product_type_id;
	}

	public void setProduct_type_id(int product_type_id) {
		this.product_type_id = product_type_id;
	}

	public String getProduct_type_name() {
		return product_type_name;
	}

	public void setProduct_type_name(String product_type_name) {
		this.product_type_name = product_type_name;
	}

	public ProductGroup(int id, int product_type_id, String code, String name) {
		super();
		this.id = id;
		this.product_type_id = product_type_id;
		this.code = code;
		this.name = name;
	}

}
