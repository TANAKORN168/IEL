package application.model.master;

public class ProductKind {
	private int id;
	private String code;
	private String name;
	private int product_type_id;
	private String product_type_name;
	private int product_group_id;
	private String product_group_name;

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

	public int getProduct_group_id() {
		return product_group_id;
	}

	public void setProduct_group_id(int product_group_id) {
		this.product_group_id = product_group_id;
	}

	public String getProduct_group_name() {
		return product_group_name;
	}

	public void setProduct_group_name(String product_group_name) {
		this.product_group_name = product_group_name;
	}

	public ProductKind(int id, int product_type_id, int product_group_id, String code, String name) {
		super();
		this.id = id;
		this.product_type_id = product_type_id;
		this.product_group_id = product_group_id;
		this.code = code;
		this.name = name;
	}

}
