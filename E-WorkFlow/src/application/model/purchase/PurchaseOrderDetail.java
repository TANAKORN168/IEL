package application.model.purchase;

public class PurchaseOrderDetail {

	private String main_code = "PO";
	private int id;
	private String code;
	private String detail;
	private String discription;
	private String send_date;
	private String amount;
	private String unit;
	private String price_per_unit;
	private String discount;
	private String price;

	public String getMain_code() {
		return main_code;
	}

	public void setMain_code(String main_code) {
		this.main_code = main_code;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getSend_date() {
		return send_date;
	}

	public void setSend_date(String send_date) {
		this.send_date = send_date;
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public String getUnit() {
		return unit;
	}

	public void setUnit(String unit) {
		this.unit = unit;
	}

	public String getPrice_per_unit() {
		return price_per_unit;
	}

	public void setPrice_per_unit(String price_per_unit) {
		this.price_per_unit = price_per_unit;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
}
