package application.model.purchase;

public class ReceiveOrder {

	private String main_code = "RO";
	private String code;
	private String doc_date;
	private String receive_date;
	private String po_code;
	private String vendor;
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

	public String getDoc_date() {
		return doc_date;
	}

	public void setDoc_date(String doc_date) {
		this.doc_date = doc_date;
	}

	public String getReceive_date() {
		return receive_date;
	}

	public void setReceive_date(String receive_date) {
		this.receive_date = receive_date;
	}

	public String getPo_code() {
		return po_code;
	}

	public void setPo_code(String po_code) {
		this.po_code = po_code;
	}

	public String getVendor() {
		return vendor;
	}

	public void setVendor(String vendor) {
		this.vendor = vendor;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

}
