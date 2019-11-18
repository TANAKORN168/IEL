package application.model.master;

public class Vendor {
	public String name_not_insert = "|name_not_insert|vendor_type_name|";
	private int id;
	private String code;
	private String pre_name;
	private String name;
	private String full_name;
	private String sort_name;
	private String tax_id;//เลขประจำตัวผู้เสียภาษี
	private int tax_type; //กรณีถูกหักภาษี ณ. ที่จ่าย แบบ 1=บุคคลธรรมดา 2=นิติบุคคล
	private int vendor_type_id;
	private String vendor_type_name;
	private String address;
	private String tel;
	private String email;
	private String fax;
	private String full_discount;
	
	private String office_hour;
	private int vat; //vat %
	private int vat_type; // 1 = Exc. 2 = Inc.
	private double trade_limit; //วงเงินการค้า
	private double credit_days; //จำนวนวันเครดิต
	private String payment;//การชำระเงิน
	
	private double more_than_price1;//ซื้อมากกว่า(บาท)
	private double more_than_amount1;//ซื้อมากกว่า(หน่วย)
	private double discount_price1;//รับส่วนลด(บาท)
	private double discount_percent1;//รับส่วนลด(%)
	
	private double more_than_price2;//ซื้อมากกว่า(บาท)
	private double more_than_amount2;//ซื้อมากกว่า(หน่วย)
	private double discount_price2;//รับส่วนลด(บาท)
	private double discount_percent2;//รับส่วนลด(%)
	
	private double more_than_price3;//ซื้อมากกว่า(บาท)
	private double more_than_amount3;//ซื้อมากกว่า(หน่วย)
	private double discount_price3;//รับส่วนลด(บาท)
	private double discount_percent3;//รับส่วนลด(%)
	
	private double more_than_price4;//ซื้อมากกว่า(บาท)
	private double more_than_amount4;//ซื้อมากกว่า(หน่วย)
	private double discount_price4;//รับส่วนลด(บาท)
	private double discount_percent4;//รับส่วนลด(%)
	
	private double more_than_price5;//ซื้อมากกว่า(บาท)
	private double more_than_amount5;//ซื้อมากกว่า(หน่วย)
	private double discount_price5;//รับส่วนลด(บาท)
	private double discount_percent5;//รับส่วนลด(%)
	
	private String contact_name1;
	private String contact_position1;
	private String contact_tel1;
	private String contact_email1;
	private boolean contact_approve1;//มีอำนาจอนุมัติ
	
	private String contact_name2;
	private String contact_position2;
	private String contact_tel2;
	private String contact_email2;
	private boolean contact_approve2;//มีอำนาจอนุมัติ
	
	private String contact_name3;
	private String contact_position3;
	private String contact_tel3;
	private String contact_email3;
	private boolean contact_approve3;//มีอำนาจอนุมัติ
	private String remark;
	
	public Vendor() {

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

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public String getPre_name() {
		return pre_name;
	}

	public void setPre_name(String pre_name) {
		this.pre_name = pre_name;
	}

	public String getSort_name() {
		return sort_name;
	}

	public void setSort_name(String sort_name) {
		this.sort_name = sort_name;
	}

	public int getVendor_type_id() {
		return vendor_type_id;
	}

	public void setVendor_type_id(int vendor_type_id) {
		this.vendor_type_id = vendor_type_id;
	}

	public String getVendor_type_name() {
		return vendor_type_name;
	}

	public void setVendor_type_name(String vendor_type_name) {
		this.vendor_type_name = vendor_type_name;
	}

	public String getOffice_hour() {
		return office_hour;
	}

	public void setOffice_hour(String office_hour) {
		this.office_hour = office_hour;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getTax_type() {
		return tax_type;
	}

	public void setTax_type(int tax_type) {
		this.tax_type = tax_type;
	}

	public int getVat() {
		return vat;
	}

	public void setVat(int vat) {
		this.vat = vat;
	}

	public int getVat_type() {
		return vat_type;
	}

	public void setVat_type(int vat_type) {
		this.vat_type = vat_type;
	}

	public double getTrade_limit() {
		return trade_limit;
	}

	public void setTrade_limit(double trade_limit) {
		this.trade_limit = trade_limit;
	}

	public double getCredit_days() {
		return credit_days;
	}

	public void setCredit_days(double credit_days) {
		this.credit_days = credit_days;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	public double getMore_than_price1() {
		return more_than_price1;
	}

	public void setMore_than_price1(double more_than_price1) {
		this.more_than_price1 = more_than_price1;
	}

	public double getMore_than_amount1() {
		return more_than_amount1;
	}

	public void setMore_than_amount1(double more_than_amount1) {
		this.more_than_amount1 = more_than_amount1;
	}

	public double getDiscount_price1() {
		return discount_price1;
	}

	public void setDiscount_price1(double discount_price1) {
		this.discount_price1 = discount_price1;
	}

	public double getDiscount_percent1() {
		return discount_percent1;
	}

	public void setDiscount_percent1(double discount_percent1) {
		this.discount_percent1 = discount_percent1;
	}

	public double getMore_than_price2() {
		return more_than_price2;
	}

	public void setMore_than_price2(double more_than_price2) {
		this.more_than_price2 = more_than_price2;
	}

	public double getMore_than_amount2() {
		return more_than_amount2;
	}

	public void setMore_than_amount2(double more_than_amount2) {
		this.more_than_amount2 = more_than_amount2;
	}

	public double getDiscount_price2() {
		return discount_price2;
	}

	public void setDiscount_price2(double discount_price2) {
		this.discount_price2 = discount_price2;
	}

	public double getDiscount_percent2() {
		return discount_percent2;
	}

	public void setDiscount_percent2(double discount_percent2) {
		this.discount_percent2 = discount_percent2;
	}

	public double getMore_than_price3() {
		return more_than_price3;
	}

	public void setMore_than_price3(double more_than_price3) {
		this.more_than_price3 = more_than_price3;
	}

	public double getMore_than_amount3() {
		return more_than_amount3;
	}

	public void setMore_than_amount3(double more_than_amount3) {
		this.more_than_amount3 = more_than_amount3;
	}

	public double getDiscount_price3() {
		return discount_price3;
	}

	public void setDiscount_price3(double discount_price3) {
		this.discount_price3 = discount_price3;
	}

	public double getDiscount_percent3() {
		return discount_percent3;
	}

	public void setDiscount_percent3(double discount_percent3) {
		this.discount_percent3 = discount_percent3;
	}

	public double getMore_than_price4() {
		return more_than_price4;
	}

	public void setMore_than_price4(double more_than_price4) {
		this.more_than_price4 = more_than_price4;
	}

	public double getMore_than_amount4() {
		return more_than_amount4;
	}

	public void setMore_than_amount4(double more_than_amount4) {
		this.more_than_amount4 = more_than_amount4;
	}

	public double getDiscount_price4() {
		return discount_price4;
	}

	public void setDiscount_price4(double discount_price4) {
		this.discount_price4 = discount_price4;
	}

	public double getDiscount_percent4() {
		return discount_percent4;
	}

	public void setDiscount_percent4(double discount_percent4) {
		this.discount_percent4 = discount_percent4;
	}

	public double getMore_than_price5() {
		return more_than_price5;
	}

	public void setMore_than_price5(double more_than_price5) {
		this.more_than_price5 = more_than_price5;
	}

	public double getMore_than_amount5() {
		return more_than_amount5;
	}

	public void setMore_than_amount5(double more_than_amount5) {
		this.more_than_amount5 = more_than_amount5;
	}

	public double getDiscount_price5() {
		return discount_price5;
	}

	public void setDiscount_price5(double discount_price5) {
		this.discount_price5 = discount_price5;
	}

	public double getDiscount_percent5() {
		return discount_percent5;
	}

	public void setDiscount_percent5(double discount_percent5) {
		this.discount_percent5 = discount_percent5;
	}

	public String getContact_name1() {
		return contact_name1;
	}

	public void setContact_name1(String contact_name1) {
		this.contact_name1 = contact_name1;
	}

	public String getContact_position1() {
		return contact_position1;
	}

	public void setContact_position1(String contact_position1) {
		this.contact_position1 = contact_position1;
	}

	public String getContact_tel1() {
		return contact_tel1;
	}

	public void setContact_tel1(String contact_tel1) {
		this.contact_tel1 = contact_tel1;
	}

	public String getContact_email1() {
		return contact_email1;
	}

	public void setContact_email1(String contact_email1) {
		this.contact_email1 = contact_email1;
	}

	public boolean isContact_approve1() {
		return contact_approve1;
	}

	public void setContact_approve1(boolean contact_approve1) {
		this.contact_approve1 = contact_approve1;
	}

	public String getContact_name2() {
		return contact_name2;
	}

	public void setContact_name2(String contact_name2) {
		this.contact_name2 = contact_name2;
	}

	public String getContact_position2() {
		return contact_position2;
	}

	public void setContact_position2(String contact_position2) {
		this.contact_position2 = contact_position2;
	}

	public String getContact_tel2() {
		return contact_tel2;
	}

	public void setContact_tel2(String contact_tel2) {
		this.contact_tel2 = contact_tel2;
	}

	public String getContact_email2() {
		return contact_email2;
	}

	public void setContact_email2(String contact_email2) {
		this.contact_email2 = contact_email2;
	}

	public boolean isContact_approve2() {
		return contact_approve2;
	}

	public void setContact_approve2(boolean contact_approve2) {
		this.contact_approve2 = contact_approve2;
	}

	public String getContact_name3() {
		return contact_name3;
	}

	public void setContact_name3(String contact_name3) {
		this.contact_name3 = contact_name3;
	}

	public String getContact_position3() {
		return contact_position3;
	}

	public void setContact_position3(String contact_position3) {
		this.contact_position3 = contact_position3;
	}

	public String getContact_tel3() {
		return contact_tel3;
	}

	public void setContact_tel3(String contact_tel3) {
		this.contact_tel3 = contact_tel3;
	}

	public String getContact_email3() {
		return contact_email3;
	}

	public void setContact_email3(String contact_email3) {
		this.contact_email3 = contact_email3;
	}

	public boolean isContact_approve3() {
		return contact_approve3;
	}

	public void setContact_approve3(boolean contact_approve3) {
		this.contact_approve3 = contact_approve3;
	}

	public String getFull_name() {
		return full_name;
	}

	public void setFull_name(String full_name) {
		this.full_name = full_name;
	}

	public String getFull_discount() {
		return full_discount;
	}

	public void setFull_discount(String full_discount) {
		this.full_discount = full_discount;
	}

}
