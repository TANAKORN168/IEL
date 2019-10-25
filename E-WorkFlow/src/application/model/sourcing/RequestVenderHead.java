package application.model.sourcing;

import application.service.utility.MyTimestamp;

public class RequestVenderHead {

	private int id;
	private String request_vender_code;//เลขที่ใบขอ
	private String vender_code;//เลขที่ผู้ประกอบการ
	private String vender_ref_code;//เลขที่อ้างอิงผู้ประกอบการ
	private String request_vender_date;//วันที่ทำใบขอ
	private String trade_contact;// ติดต่อทางการค้า
	private String group_name;// ชื่อกลุ่ม
	private String tax_id;// เลขประจำตัวผู้เสียภาษี
	// ประเภทผู้ประกอบการ
	private boolean vat_registration;// true = จดทะเบียนภาษีมูลค่าเพิ่ม, false = ไม่ได้จดทะเบียนมูลค่าเพิ่ม
	private int vat_percent;// % ภาษีมูลค่าเพิ่ม
	private boolean vat_separately;// true = ภาษีมูลค่าเพิ่มแยกนอก (Exciusive Vat), false = ภาษีมูลค่าเพิ่มรวมใน (Inclusive Vat)
	private int nature_of_business;// ลักษณะกิจการ 0 = ผู้ผลิต, 1 = ตัวแทนจำหน่าย, 2 = อื่น ๆ ระบุ
	private String nature_of_business_remark;// อื่น ๆ ระบุ
	private String headquarters;// สำนักงานใหญ่
	private String tel_headquarters;// โทรศัพท์
	private String tax_headquarters;// โทรสาร
	private String factory;// โรงงาน
	private String tel_factory;// โทรศัพท์
	private String tax_factory;// โทรสาร
	private String contact_name1;// ผู้ติดต่อคนที่1
	private String contact_position1;// ตำแหน่ง
	private String contact_tel1;// โทรศัพท์
	private String contact_name2;// ผู้ติดต่อคนที่2
	private String contact_position2;// ตำแหน่ง
	private String contact_tel2;// โทรศัพท์
	private String contact_name3;// ผู้ติดต่อคนที่3
	private String contact_position3;// ตำแหน่ง
	private String contact_tel3;// โทรศัพท์
	private String contact_name4;// ผู้ติดต่อคนที่4
	private String contact_position4;// ตำแหน่ง
	private String contact_tel4;// โทรศัพท์
	private String current_account_no;// บัญชีกระแสรายวัน
	private String saving_account_no;// บัญชีออมทรัพย์
	private String account_name;// ชื่อบัญชี
	private boolean legal_entity; // true = นิติบุคคล, false = บุคคลธรรมดา
	private boolean copy_company_registration;// สำเนาหนังสือรับรองการจดทะเบียนห้างหุ้นส่วน/บริษัท (อายุไม่เกิน 2 เดือน)
	private boolean copy_company_certificate;// สำเนาใบสำคัญแสดงการจดทะเบียนห้างหุ้นส่วน / บริษัท
	private boolean copy_vat_certificate;// สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20)
	private boolean power_of_attorney;// หนังสือมอบอำนาจพร้อมอากรแสตมป์กรณีที่ผู้มีอำนาจไม่สามารถมาดำเนินการได้ด้วยตนเอง
	private boolean house_registration_authorized;// สำเนาทะเบียนบ้านของผู้มีอำนาจลงนาม
	private boolean copy_bank_statement;// สำเนาสมุดบัญชีเงินฝาก
	private boolean copy_identification_authorized;// สำเนาบัตรประชาชนของผู้มีอำนาจลงนาม
	private boolean other_specify;// อื่น ๆ ระบุ
	private String other_specify_remark;// อื่น ๆ ระบุ
	private boolean copy_id_crad;// สำเนาบัตรประชาชน
	private boolean copy_tax;// สำเนาบัตรประจำตัวผู้เสียภาษี
	private boolean copy_commercial_certificate;// สำเนาใบทะเบีนพาณิชย์ กรณีได้จดทะเบียนพาณิชย์
	private boolean house_registration;// สำเนาทะเบียนบ้าน
	private boolean copy_bank_statement_individual;// สำเนาสมุดบัญชีเงินฝาก
	private boolean copy_vat_certificate_individual;// สำเนาใบสำคัญทะเบียนบ้านภาษีมูลค่าเพิ่ม (ภ.พ. 20) (กรณีจดทะเบียนภาษีมูลค่าเพิ่ม )

	private MyTimestamp timeadd;
	private MyTimestamp timeupd;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRequest_vender_code() {
		return request_vender_code;
	}

	public void setRequest_vender_code(String request_vender_code) {
		this.request_vender_code = request_vender_code;
	}

	public String getVender_ref_code() {
		return vender_ref_code;
	}

	public void setVender_ref_code(String vender_ref_code) {
		this.vender_ref_code = vender_ref_code;
	}

	public String getVender_code() {
		return vender_code;
	}

	public void setVender_code(String vender_code) {
		this.vender_code = vender_code;
	}

	public String getRequest_vender_date() {
		return request_vender_date;
	}

	public void setRequest_vender_date(String request_vender_date) {
		this.request_vender_date = request_vender_date;
	}

	public String getTrade_contact() {
		return trade_contact;
	}

	public void setTrade_contact(String trade_contact) {
		this.trade_contact = trade_contact;
	}

	public String getGroup_name() {
		return group_name;
	}

	public void setGroup_name(String group_name) {
		this.group_name = group_name;
	}

	public String getTax_id() {
		return tax_id;
	}

	public void setTax_id(String tax_id) {
		this.tax_id = tax_id;
	}

	public boolean isVat_registration() {
		return vat_registration;
	}

	public void setVat_registration(boolean vat_registration) {
		this.vat_registration = vat_registration;
	}

	public int getVat_percent() {
		return vat_percent;
	}

	public void setVat_percent(int vat_percent) {
		this.vat_percent = vat_percent;
	}

	public boolean isVat_separately() {
		return vat_separately;
	}

	public void setVat_separately(boolean vat_separately) {
		this.vat_separately = vat_separately;
	}

	public int getNature_of_business() {
		return nature_of_business;
	}

	public void setNature_of_business(int nature_of_business) {
		this.nature_of_business = nature_of_business;
	}

	public String getNature_of_business_remark() {
		return nature_of_business_remark;
	}

	public void setNature_of_business_remark(String nature_of_business_remark) {
		this.nature_of_business_remark = nature_of_business_remark;
	}

	public String getHeadquarters() {
		return headquarters;
	}

	public void setHeadquarters(String headquarters) {
		this.headquarters = headquarters;
	}

	public String getTel_headquarters() {
		return tel_headquarters;
	}

	public void setTel_headquarters(String tel_headquarters) {
		this.tel_headquarters = tel_headquarters;
	}

	public String getTax_headquarters() {
		return tax_headquarters;
	}

	public void setTax_headquarters(String tax_headquarters) {
		this.tax_headquarters = tax_headquarters;
	}

	public String getFactory() {
		return factory;
	}

	public void setFactory(String factory) {
		this.factory = factory;
	}

	public String getTel_factory() {
		return tel_factory;
	}

	public void setTel_factory(String tel_factory) {
		this.tel_factory = tel_factory;
	}

	public String getTax_factory() {
		return tax_factory;
	}

	public void setTax_factory(String tax_factory) {
		this.tax_factory = tax_factory;
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

	public String getContact_name4() {
		return contact_name4;
	}

	public void setContact_name4(String contact_name4) {
		this.contact_name4 = contact_name4;
	}

	public String getContact_position4() {
		return contact_position4;
	}

	public void setContact_position4(String contact_position4) {
		this.contact_position4 = contact_position4;
	}

	public String getContact_tel4() {
		return contact_tel4;
	}

	public void setContact_tel4(String contact_tel4) {
		this.contact_tel4 = contact_tel4;
	}

	public String getCurrent_account_no() {
		return current_account_no;
	}

	public void setCurrent_account_no(String current_account_no) {
		this.current_account_no = current_account_no;
	}

	public String getSaving_account_no() {
		return saving_account_no;
	}

	public void setSaving_account_no(String saving_account_no) {
		this.saving_account_no = saving_account_no;
	}

	public String getAccount_name() {
		return account_name;
	}

	public void setAccount_name(String account_name) {
		this.account_name = account_name;
	}

	public boolean isLegal_entity() {
		return legal_entity;
	}

	public void setLegal_entity(boolean legal_entity) {
		this.legal_entity = legal_entity;
	}

	public boolean isCopy_company_registration() {
		return copy_company_registration;
	}

	public void setCopy_company_registration(boolean copy_company_registration) {
		this.copy_company_registration = copy_company_registration;
	}

	public boolean isCopy_company_certificate() {
		return copy_company_certificate;
	}

	public void setCopy_company_certificate(boolean copy_company_certificate) {
		this.copy_company_certificate = copy_company_certificate;
	}

	public boolean isCopy_vat_certificate() {
		return copy_vat_certificate;
	}

	public void setCopy_vat_certificate(boolean copy_vat_certificate) {
		this.copy_vat_certificate = copy_vat_certificate;
	}

	public boolean isPower_of_attorney() {
		return power_of_attorney;
	}

	public void setPower_of_attorney(boolean power_of_attorney) {
		this.power_of_attorney = power_of_attorney;
	}

	public boolean isHouse_registration_authorized() {
		return house_registration_authorized;
	}

	public void setHouse_registration_authorized(boolean house_registration_authorized) {
		this.house_registration_authorized = house_registration_authorized;
	}

	public boolean isCopy_bank_statement() {
		return copy_bank_statement;
	}

	public void setCopy_bank_statement(boolean copy_bank_statement) {
		this.copy_bank_statement = copy_bank_statement;
	}

	public boolean isCopy_identification_authorized() {
		return copy_identification_authorized;
	}

	public void setCopy_identification_authorized(boolean copy_identification_authorized) {
		this.copy_identification_authorized = copy_identification_authorized;
	}

	public boolean isOther_specify() {
		return other_specify;
	}

	public void setOther_specify(boolean other_specify) {
		this.other_specify = other_specify;
	}

	public String getOther_specify_remark() {
		return other_specify_remark;
	}

	public void setOther_specify_remark(String other_specify_remark) {
		this.other_specify_remark = other_specify_remark;
	}

	public boolean isCopy_id_crad() {
		return copy_id_crad;
	}

	public void setCopy_id_crad(boolean copy_id_crad) {
		this.copy_id_crad = copy_id_crad;
	}

	public boolean isCopy_tax() {
		return copy_tax;
	}

	public void setCopy_tax(boolean copy_tax) {
		this.copy_tax = copy_tax;
	}

	public boolean isCopy_commercial_certificate() {
		return copy_commercial_certificate;
	}

	public void setCopy_commercial_certificate(boolean copy_commercial_certificate) {
		this.copy_commercial_certificate = copy_commercial_certificate;
	}

	public boolean isHouse_registration() {
		return house_registration;
	}

	public void setHouse_registration(boolean house_registration) {
		this.house_registration = house_registration;
	}

	public boolean isCopy_bank_statement_individual() {
		return copy_bank_statement_individual;
	}

	public void setCopy_bank_statement_individual(boolean copy_bank_statement_individual) {
		this.copy_bank_statement_individual = copy_bank_statement_individual;
	}

	public boolean isCopy_vat_certificate_individual() {
		return copy_vat_certificate_individual;
	}

	public void setCopy_vat_certificate_individual(boolean copy_vat_certificate_individual) {
		this.copy_vat_certificate_individual = copy_vat_certificate_individual;
	}

	public MyTimestamp getTimeadd() {
		return timeadd;
	}

	public void setTimeadd(MyTimestamp timeadd) {
		this.timeadd = timeadd;
	}

	public MyTimestamp getTimeupd() {
		return timeupd;
	}

	public void setTimeupd(MyTimestamp timeupd) {
		this.timeupd = timeupd;
	}

}
