package application.model.sourcing;

public class RequestVenderDetail {

	private int id;
	private int head_id;
	
	private String product_code;//รหัสสินค้า 	
	private String product_barcode;//รหัสบาร์โคด 	
	private String product_name;//ชื่อสินค้า 	
	private String contain;//ขนาดบรรจุ
	//หน่วยหลัก/ย่อย
	private String chest;//หีบ 
	private String bundle;//มัด
	private double sale_price;//ราคาขาย
	//ราคาทุน
	private double main_capital;//ทุนหลัก
	private double sub_capital;//ทุนย่อย
	//GP
	private double baht;//(บาท)
	private double percent;//(%)
	private String product_category;//หมวดสินค้า
	private String supplier_code;//รหัสผู้จำหน่าย
	private String supplier_name;//ชื่อผู้จำหน่าย
	private String brand;//ยี่ห้อ
	//เงื่อนไขทางการค้า
	private  boolean is_take_back;//รับคืน
	private String delivery_branch;//สาขาที่ส่งสินค้า
	private String delivery_schedule;//กำหนดส่งสินค้า
	
    private String timeadd_date;
    private String timeadd_time;
    private String timeadd_user;
    private String timeupd_date;
    private String timeupd_time;
    private String timeupd_user;
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getHead_id() {
		return head_id;
	}

	public void setHead_id(int head_id) {
		this.head_id = head_id;
	}

	public String getTimeadd_date() {
		return timeadd_date;
	}

	public String getProduct_code() {
		return product_code;
	}

	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}

	public String getProduct_barcode() {
		return product_barcode;
	}

	public void setProduct_barcode(String product_barcode) {
		this.product_barcode = product_barcode;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getContain() {
		return contain;
	}

	public void setContain(String contain) {
		this.contain = contain;
	}

	public String getChest() {
		return chest;
	}

	public void setChest(String chest) {
		this.chest = chest;
	}

	public String getBundle() {
		return bundle;
	}

	public void setBundle(String bundle) {
		this.bundle = bundle;
	}

	public Double getSale_price() {
		return sale_price;
	}

	public void setSale_price(Double sale_price) {
		this.sale_price = sale_price;
	}

	public Double getMain_capital() {
		return main_capital;
	}

	public void setMain_capital(Double main_capital) {
		this.main_capital = main_capital;
	}

	public Double getSub_capital() {
		return sub_capital;
	}

	public void setSub_capital(Double sub_capital) {
		this.sub_capital = sub_capital;
	}

	public Double getBaht() {
		return baht;
	}

	public void setBaht(Double baht) {
		this.baht = baht;
	}

	public Double getPercent() {
		return percent;
	}

	public void setPercent(Double percent) {
		this.percent = percent;
	}

	public String getProduct_category() {
		return product_category;
	}

	public void setProduct_category(String product_category) {
		this.product_category = product_category;
	}

	public String getSupplier_code() {
		return supplier_code;
	}

	public void setSupplier_code(String supplier_code) {
		this.supplier_code = supplier_code;
	}

	public String getSupplier_name() {
		return supplier_name;
	}

	public void setSupplier_name(String supplier_name) {
		this.supplier_name = supplier_name;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public Boolean getIs_take_back() {
		return is_take_back;
	}

	public void setIs_take_back(Boolean is_take_back) {
		this.is_take_back = is_take_back;
	}

	public String getDelivery_branch() {
		return delivery_branch;
	}

	public void setDelivery_branch(String delivery_branch) {
		this.delivery_branch = delivery_branch;
	}

	public String getDelivery_schedule() {
		return delivery_schedule;
	}

	public void setDelivery_schedule(String delivery_schedule) {
		this.delivery_schedule = delivery_schedule;
	}

	public void setSale_price(double sale_price) {
		this.sale_price = sale_price;
	}

	public void setMain_capital(double main_capital) {
		this.main_capital = main_capital;
	}

	public void setSub_capital(double sub_capital) {
		this.sub_capital = sub_capital;
	}

	public void setBaht(double baht) {
		this.baht = baht;
	}

	public void setPercent(double percent) {
		this.percent = percent;
	}

	public void setIs_take_back(boolean is_take_back) {
		this.is_take_back = is_take_back;
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
