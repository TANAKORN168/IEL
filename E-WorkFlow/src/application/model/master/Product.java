package application.model.master;

public class Product {
	private int id;
	private String type;
	private String code;
	private String barcode;
	private String name;
	private String discription;
	private int product_type_id;
	private String product_type_name;
	private int product_group_id;
	private String product_group_name;
	private int product_kind_id;
	private String product_kind_name;
	private int brand_id;
	private String brand_name;
	private int product_model_id;
	private String product_model_name;
	private double weight_per_unit;
	private double price;

	private String url_pic;//รูปสินค้า
	
	private int take_packing_unit_id;
	private String take_packing_unit_name;
	
	private int receive_packing_unit_id1;
	private String receive_packing_unit_name1;
	private int take_amount1;	
	private int receive_packing_unit_id2;
	private String receive_packing_unit_name2;
	private int take_amount2;
	private int receive_packing_unit_id3;
	private String receive_packing_unit_name3;
	private int take_amount3;
	private int receive_packing_unit_id4;
	private String receive_packing_unit_name4;
	private int take_amount4;
	private int receive_packing_unit_id5;
	private String receive_packing_unit_name5;
	private int take_amount5;
	
	//history
	private String last_vendor;//ผู้ขายล่าสุด
	private double last_price_per_unit;//ราคาต่อชิ้นล่าสุด
	private int last_amount;//จำนวนซื้อล่าสุด
	
	private double average_vendor_price;//ราคาเฉลี่ยตามผู้ขาย
	private double lowest_vendor_price;//ราคาต่ำสุดตามผู้ขาย
	
	private double average_po_price;//ราคาเฉลี่ยตาม PO
	private double lowest_po_price;//ราคาต่ำสุดตาม PO
	
	private String full_name = "";
	private String full_discription = "";

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

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	public String getBarcode() {
		return barcode;
	}

	public void setBarcode(String barcode) {
		this.barcode = barcode;
	}

	public int getProduct_type_id() {
		return product_type_id;
	}

	public void setProduct_type_id(int product_type_id) {
		this.product_type_id = product_type_id;
	}

	public int getProduct_group_id() {
		return product_group_id;
	}

	public void setProduct_group_id(int product_group_id) {
		this.product_group_id = product_group_id;
	}

	public int getProduct_kind_id() {
		return product_kind_id;
	}

	public void setProduct_kind_id(int product_kind_id) {
		this.product_kind_id = product_kind_id;
	}

	public int getBrand_id() {
		return brand_id;
	}

	public void setBrand_id(int brand_id) {
		this.brand_id = brand_id;
	}

	public int getProduct_model_id() {
		return product_model_id;
	}

	public void setProduct_model_id(int product_model_id) {
		this.product_model_id = product_model_id;
	}

	public double getWeight_per_unit() {
		return weight_per_unit;
	}

	public void setWeight_per_unit(double weight_per_unit) {
		this.weight_per_unit = weight_per_unit;
	}

	public int getTake_packing_unit_id() {
		return take_packing_unit_id;
	}

	public void setTake_packing_unit_id(int take_packing_unit_id) {
		this.take_packing_unit_id = take_packing_unit_id;
	}

	public int getReceive_packing_unit_id1() {
		return receive_packing_unit_id1;
	}

	public void setReceive_packing_unit_id1(int receive_packing_unit_id1) {
		this.receive_packing_unit_id1 = receive_packing_unit_id1;
	}

	public int getTake_amount1() {
		return take_amount1;
	}

	public void setTake_amount1(int take_amount1) {
		this.take_amount1 = take_amount1;
	}

	public int getReceive_packing_unit_id2() {
		return receive_packing_unit_id2;
	}

	public void setReceive_packing_unit_id2(int receive_packing_unit_id2) {
		this.receive_packing_unit_id2 = receive_packing_unit_id2;
	}

	public int getTake_amount2() {
		return take_amount2;
	}

	public void setTake_amount2(int take_amount2) {
		this.take_amount2 = take_amount2;
	}

	public int getReceive_packing_unit_id3() {
		return receive_packing_unit_id3;
	}

	public void setReceive_packing_unit_id3(int receive_packing_unit_id3) {
		this.receive_packing_unit_id3 = receive_packing_unit_id3;
	}

	public int getTake_amount3() {
		return take_amount3;
	}

	public void setTake_amount3(int take_amount3) {
		this.take_amount3 = take_amount3;
	}

	public int getReceive_packing_unit_id4() {
		return receive_packing_unit_id4;
	}

	public void setReceive_packing_unit_id4(int receive_packing_unit_id4) {
		this.receive_packing_unit_id4 = receive_packing_unit_id4;
	}

	public int getTake_amount4() {
		return take_amount4;
	}

	public void setTake_amount4(int take_amount4) {
		this.take_amount4 = take_amount4;
	}

	public int getReceive_packing_unit_id5() {
		return receive_packing_unit_id5;
	}

	public void setReceive_packing_unit_id5(int receive_packing_unit_id5) {
		this.receive_packing_unit_id5 = receive_packing_unit_id5;
	}

	public int getTake_amount5() {
		return take_amount5;
	}

	public void setTake_amount5(int take_amount5) {
		this.take_amount5 = take_amount5;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public String getLast_vendor() {
		return last_vendor;
	}

	public void setLast_vendor(String last_vendor) {
		this.last_vendor = last_vendor;
	}

	public double getLast_price_per_unit() {
		return last_price_per_unit;
	}

	public void setLast_price_per_unit(double last_price_per_unit) {
		this.last_price_per_unit = last_price_per_unit;
	}

	public int getLast_amount() {
		return last_amount;
	}

	public void setLast_amount(int last_amount) {
		this.last_amount = last_amount;
	}

	public double getAverage_vendor_price() {
		return average_vendor_price;
	}

	public void setAverage_vendor_price(double average_vendor_price) {
		this.average_vendor_price = average_vendor_price;
	}

	public double getLowest_vendor_price() {
		return lowest_vendor_price;
	}

	public void setLowest_vendor_price(double lowest_vendor_price) {
		this.lowest_vendor_price = lowest_vendor_price;
	}

	public double getAverage_po_price() {
		return average_po_price;
	}

	public void setAverage_po_price(double average_po_price) {
		this.average_po_price = average_po_price;
	}

	public double getLowest_po_price() {
		return lowest_po_price;
	}

	public void setLowest_po_price(double lowest_po_price) {
		this.lowest_po_price = lowest_po_price;
	}

	public String getUrl_pic() {
		return url_pic;
	}

	public void setUrl_pic(String url_pic) {
		this.url_pic = url_pic;
	}

	public String getProduct_type_name() {
		return product_type_name;
	}

	public void setProduct_type_name(String product_type_name) {
		this.product_type_name = product_type_name;
	}

	public String getProduct_group_name() {
		return product_group_name;
	}

	public void setProduct_group_name(String product_group_name) {
		this.product_group_name = product_group_name;
	}

	public String getProduct_kind_name() {
		return product_kind_name;
	}

	public void setProduct_kind_name(String product_kind_name) {
		this.product_kind_name = product_kind_name;
	}

	public String getBrand_name() {
		return brand_name;
	}

	public void setBrand_name(String brand_name) {
		this.brand_name = brand_name;
	}

	public String getProduct_model_name() {
		return product_model_name;
	}

	public void setProduct_model_name(String product_model_name) {
		this.product_model_name = product_model_name;
	}

	public String getTake_packing_unit_name() {
		return take_packing_unit_name;
	}

	public void setTake_packing_unit_name(String take_packing_unit_name) {
		this.take_packing_unit_name = take_packing_unit_name;
	}

	public String getReceive_packing_unit_name1() {
		return receive_packing_unit_name1;
	}

	public void setReceive_packing_unit_name1(String receive_packing_unit_name1) {
		this.receive_packing_unit_name1 = receive_packing_unit_name1;
	}

	public String getReceive_packing_unit_name2() {
		return receive_packing_unit_name2;
	}

	public void setReceive_packing_unit_name2(String receive_packing_unit_name2) {
		this.receive_packing_unit_name2 = receive_packing_unit_name2;
	}

	public String getReceive_packing_unit_name3() {
		return receive_packing_unit_name3;
	}

	public void setReceive_packing_unit_name3(String receive_packing_unit_name3) {
		this.receive_packing_unit_name3 = receive_packing_unit_name3;
	}

	public String getReceive_packing_unit_name4() {
		return receive_packing_unit_name4;
	}

	public void setReceive_packing_unit_name4(String receive_packing_unit_name4) {
		this.receive_packing_unit_name4 = receive_packing_unit_name4;
	}

	public String getReceive_packing_unit_name5() {
		return receive_packing_unit_name5;
	}

	public void setReceive_packing_unit_name5(String receive_packing_unit_name5) {
		this.receive_packing_unit_name5 = receive_packing_unit_name5;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getFull_discription() {
		return full_discription;
	}

	public void setFull_discription(String full_discription) {
		this.full_discription = full_discription;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

}
