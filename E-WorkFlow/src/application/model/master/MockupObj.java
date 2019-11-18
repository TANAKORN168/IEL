package application.model.master;

import java.util.ArrayList;
import java.util.List;

import application.model.purchase.PurchaseOrder;
import application.model.purchase.PurchaseOrderDetail;
import application.model.purchase.PurchaseRequisition;
import application.model.purchase.PurchaseRequisitionDetail;
import application.model.purchase.ReceiveOrder;

public class MockupObj {

	public static List<Province> getListProvince() {
		List<Province> list_province = new ArrayList<Province>();
		list_province.add(new Province(1,"01","นครราชสีมา"));
		list_province.add(new Province(2,"02","เชียงใหม่"));
		list_province.add(new Province(3,"03","กาญจนบุรี"));
		list_province.add(new Province(4,"04","ตาก"));
		list_province.add(new Province(5,"05","อุบลราชธานี"));
		list_province.add(new Province(6,"06","สุราษฎร์ธานี"));
		list_province.add(new Province(7,"07","ชัยภูมิ"));
		list_province.add(new Province(8,"08","แม่ฮ่องสอน"));
		list_province.add(new Province(9,"09","เพชรบูรณ์"));
		list_province.add(new Province(10,"10","ลำปาง"));
		list_province.add(new Province(11,"11","อุดรธานี"));
		list_province.add(new Province(12,"12","เชียงราย"));
		list_province.add(new Province(13,"13","น่าน"));
		list_province.add(new Province(14,"14","เลย"));
		list_province.add(new Province(15,"15","ขอนแก่น"));
		list_province.add(new Province(16,"16","พิษณุโลก"));
		list_province.add(new Province(17,"17","บุรีรัมย์"));
		list_province.add(new Province(18,"18","นครศรีธรรมราช"));
		list_province.add(new Province(19,"19","สกลนคร"));
		list_province.add(new Province(20,"20","นครสวรรค์"));
		list_province.add(new Province(21,"21","ศรีสะเกษ"));
		list_province.add(new Province(22,"22","กำแพงเพชร"));
		list_province.add(new Province(23,"23","ร้อยเอ็ด"));
		list_province.add(new Province(24,"24","สุรินทร์"));
		list_province.add(new Province(25,"25","อุตรดิตถ์"));
		list_province.add(new Province(26,"26","สงขลา"));
		list_province.add(new Province(27,"27","สระแก้ว"));
		list_province.add(new Province(28,"28","กาฬสินธุ์"));
		list_province.add(new Province(29,"29","อุทัยธานี"));
		list_province.add(new Province(30,"30","สุโขทัย"));
		list_province.add(new Province(31,"31","แพร่"));
		list_province.add(new Province(32,"32","ประจวบคีรีขันธ์"));
		list_province.add(new Province(33,"33","จันทบุรี"));
		list_province.add(new Province(34,"34","พะเยา"));
		list_province.add(new Province(35,"35","เพชรบุรี"));
		list_province.add(new Province(36,"36","ลพบุรี"));
		list_province.add(new Province(37,"37","ชุมพร"));
		list_province.add(new Province(38,"38","นครพนม"));
		list_province.add(new Province(39,"39","สุพรรณบุรี"));
		list_province.add(new Province(40,"40","ฉะเชิงเทรา"));
		list_province.add(new Province(41,"41","มหาสารคาม"));
		list_province.add(new Province(42,"42","ราชบุรี"));
		list_province.add(new Province(43,"43","ตรัง"));
		list_province.add(new Province(44,"44","ปราจีนบุรี"));
		list_province.add(new Province(45,"45","กระบี่"));
		list_province.add(new Province(46,"46","พิจิตร"));
		list_province.add(new Province(47,"47","ยะลา"));
		list_province.add(new Province(48,"48","ลำพูน"));
		list_province.add(new Province(49,"49","นราธิวาส"));
		list_province.add(new Province(50,"50","ชลบุรี"));
		list_province.add(new Province(51,"51","มุกดาหาร"));
		list_province.add(new Province(52,"52","บึงกาฬ"));
		list_province.add(new Province(53,"53","พังงา"));
		list_province.add(new Province(54,"54","ยโสธร"));
		list_province.add(new Province(55,"55","หนองบัวลำภู"));
		list_province.add(new Province(56,"56","สระบุรี"));
		list_province.add(new Province(57,"57","ระยอง"));
		list_province.add(new Province(58,"58","พัทลุง"));
		list_province.add(new Province(59,"59","ระนอง"));
		list_province.add(new Province(60,"60","อำนาจเจริญ"));
		list_province.add(new Province(61,"61","หนองคาย"));
		list_province.add(new Province(62,"62","ตราด"));
		list_province.add(new Province(63,"63","พระนครศรีอยุธยา"));
		list_province.add(new Province(64,"64","สตูล"));
		list_province.add(new Province(65,"65","ชัยนาท"));
		list_province.add(new Province(66,"66","นครปฐม"));
		list_province.add(new Province(67,"67","นครนายก"));
		list_province.add(new Province(68,"68","ปัตตานี"));
		list_province.add(new Province(69,"69","กรุงเทพฯ"));
		list_province.add(new Province(70,"70","ปทุมธานี"));
		list_province.add(new Province(71,"71","สมุทรปราการ"));
		list_province.add(new Province(72,"72","อ่างทอง"));
		list_province.add(new Province(73,"73","สมุทรสาคร"));
		list_province.add(new Province(74,"74","สิงห์บุรี"));
		list_province.add(new Province(75,"75","นนทบุรี"));
		list_province.add(new Province(76,"76","ภูเก็ต"));
		list_province.add(new Province(77,"77","สมุทรสงคราม"));

		return list_province;
	}
	
	public static String getProvinceName(int province_id) {
		String name ="";
		List<Province> list_province = getListProvince();
		for (Province province : list_province) {
			if(province_id == province.getId()) {
				name = province.getName();
			}
		}
		return name;
	}
	
	public static List<Amphur> getListAmphur() {
		List<Amphur> list_amphur = new ArrayList<Amphur>();
		list_amphur.add(new Amphur(1,69,"6901","เขตพระนคร"));
		list_amphur.add(new Amphur(2,69,"6902","เขตดุสิต"));
		list_amphur.add(new Amphur(3,69,"6903","เขตหนองจอก"));
		list_amphur.add(new Amphur(4,69,"6904","เขตบางรัก"));
		list_amphur.add(new Amphur(5,69,"6905","เขตบางเขน"));
		
		return list_amphur;
	}
	
	public static List<Amphur> getListAmphurByProvinceId(int province_id) {
		List<Amphur> list_amphur = getListAmphur();
		List<Amphur> list_return_amphur = new ArrayList<Amphur>();
		for (Amphur amphur : list_amphur) {
			if(amphur.getProvince_id() == province_id) {
				list_return_amphur.add(amphur);
			}
		}
		
		return list_return_amphur;
	}
	
	public static String getAmphurName(int amphur_id) {
		String name ="";
		List<Amphur> list_amphur = getListAmphur();
		for (Amphur amphur : list_amphur) {
			if(amphur_id == amphur.getId()) {
				name = amphur.getName();
			}
		}
		return name;
	}
	
	public static List<Tambon> getListTambon() {
		List<Tambon> list_tambon = new ArrayList<Tambon>();
		list_tambon.add(new Tambon(1,69,1,"690101","พระบรมมหาราชวัง"));
		list_tambon.add(new Tambon(2,69,1,"690102","วังบูรพาภิรมย์"));
		list_tambon.add(new Tambon(3,69,1,"690103","วัดราชบพิธ"));
		list_tambon.add(new Tambon(4,69,1,"690104","สำราญราษฎร์"));
		list_tambon.add(new Tambon(5,69,1,"690105","ศาลเจ้าพ่อเสือ"));
		list_tambon.add(new Tambon(6,69,1,"690106","เสาชิงช้า"));
		list_tambon.add(new Tambon(7,69,1,"690107","บวรนิเวศ"));
		list_tambon.add(new Tambon(8,69,1,"690108","ตลาดยอด"));
		list_tambon.add(new Tambon(9,69,1,"690109","ชนะสงคราม"));
		list_tambon.add(new Tambon(10,69,1,"690110","บ้านพานถม"));
		list_tambon.add(new Tambon(11,69,1,"690111","บางขุนพรหม"));
		list_tambon.add(new Tambon(12,69,1,"690112","วัดสามพระยา"));
		list_tambon.add(new Tambon(13,69,2,"690213","ดุสิต"));
		list_tambon.add(new Tambon(14,69,2,"690214","วชิรพยาบาล"));
		list_tambon.add(new Tambon(15,69,2,"690215","สวนจิตรลดา"));
		list_tambon.add(new Tambon(16,69,2,"690216","สี่แยกมหานาค"));
		list_tambon.add(new Tambon(17,69,2,"690217","ถนนนครไชยศรี"));
		list_tambon.add(new Tambon(18,69,3,"690318","กระทุ่มราย"));
		list_tambon.add(new Tambon(19,69,3,"690319","หนองจอก"));
		list_tambon.add(new Tambon(20,69,3,"690320","คลองสิบ"));
		list_tambon.add(new Tambon(21,69,3,"690321","คลองสิบสอง"));
		list_tambon.add(new Tambon(22,69,3,"690322","โคกแฝด"));
		list_tambon.add(new Tambon(23,69,3,"690323","คู้ฝั่งเหนือ"));
		list_tambon.add(new Tambon(24,69,3,"690324","ลำผักชี"));
		list_tambon.add(new Tambon(25,69,3,"690325","ลำต้อยติ่ง"));
		list_tambon.add(new Tambon(26,69,4,"690426","มหาพฤฒาราม"));
		list_tambon.add(new Tambon(27,69,4,"690427","สีลม"));
		list_tambon.add(new Tambon(28,69,4,"690428","สุริยวงศ์"));
		list_tambon.add(new Tambon(29,69,4,"690429","บางรัก"));
		list_tambon.add(new Tambon(30,69,4,"690430","สี่พระยา"));
		list_tambon.add(new Tambon(31,69,5,"690431","อนุสาวรีย์"));
		list_tambon.add(new Tambon(32,69,5,"690432","ท่าแร้ง"));
		
		return list_tambon;
	}
	
	public static List<Tambon> getListTambonByProvinceIdAndAmphurId(int province_id, int amphur_id) {
		List<Tambon> list_tambon = getListTambon();

		List<Tambon> list_return_tambon = new ArrayList<Tambon>();
		for (Tambon tambon : list_tambon) {
			if(tambon.getProvince_id() == province_id && tambon.getAmphur_id() == amphur_id) {
				list_return_tambon.add(tambon);
			}
		}
		
		return list_return_tambon;
	}
	
	public static String getTambonName(int tambon_id) {
		String name = "";
		List<Tambon> list_tambon = getListTambon();
		for (Tambon tambon : list_tambon) {
			if(tambon_id == tambon.getId()) {
				name = tambon.getName();
			}
		}
		return name;
	}
	
	public static List<VendorType> getListVendorType() {
		List<VendorType> list_vendor_type = new ArrayList<VendorType>();
		list_vendor_type.add(new VendorType(1, "T01", "ผู้ผลิต"));
		list_vendor_type.add(new VendorType(2, "T02", "ตัวแทนจำหน่าย"));
		return list_vendor_type;
	}
	
	public static List<Brand> getListBrand() {
		List<Brand> list_brand = new ArrayList<Brand>();
		list_brand.add(new Brand(1, "B01", "Apple"));
		list_brand.add(new Brand(2, "B02", "Dell"));
		list_brand.add(new Brand(3, "B03", "Acer"));
		return list_brand;
	}
	
	public static String getBrandName(int brand_id) {
		String name = "";
		List<Brand> list_brand = getListBrand();
		for (Brand brand : list_brand) {
			if(brand_id == brand.getId()) {
				name = brand.getName();
			}
		}
		return name;
	}
	
	public static List<ProductModel> getListProductModel() {
		List<ProductModel> list_serial = new ArrayList<ProductModel>();
		list_serial.add(new ProductModel(1, 1, "M01", "MacBook Pro"));
		list_serial.add(new ProductModel(2, 2, "M02", "G Series Laptops"));
		list_serial.add(new ProductModel(3, 3, "M03", "Swift 5"));
		return list_serial;
	}
	
	public static List<PackingUnit> getListPackingUnit() {
		List<PackingUnit> list_packing_uint = new ArrayList<PackingUnit>();
		list_packing_uint.add(new PackingUnit(1, "PU01", "แท่ง"));
		list_packing_uint.add(new PackingUnit(2, "PU02", "ชิ้น"));
		list_packing_uint.add(new PackingUnit(3, "PU03", "กล่อง"));
		
		return list_packing_uint;
	}
	
	public static List<ProductType> getListProductType() {
		List<ProductType> list_productType = new ArrayList<ProductType>();
		list_productType.add(new ProductType(1,"PT001","Computer"));
		list_productType.add(new ProductType(2,"PT002","อุปกรณ์ในการทำงาน"));

		return list_productType;
	}
	
	public static String getProductTypeName(int productType_id) {
		String name ="";
		List<ProductType> list_productType = getListProductType();
		for (ProductType productType : list_productType) {
			if(productType_id == productType.getId()) {
				name = productType.getName();
			}
		}
		return name;
	}
	
	public static List<ProductGroup> getListProductGroup() {
		List<ProductGroup> list_productGroup = new ArrayList<ProductGroup>();
		list_productGroup.add(new ProductGroup(1,1,"PG001","Notebook"));
		list_productGroup.add(new ProductGroup(2,1,"PG002","PC"));
		list_productGroup.add(new ProductGroup(3,2,"PG003","สินค้าสิ้นเปลือง"));
		list_productGroup.add(new ProductGroup(4,2,"PG004","สินค้าหมุนเวียน"));
		
		return list_productGroup;
	}
	
	public static String getProductGroupName(int productGroup_id) {
		String name ="";
		List<ProductGroup> list_productGroup = getListProductGroup();
		for (ProductGroup productGroup : list_productGroup) {
			if(productGroup_id == productGroup.getId()) {
				name = productGroup.getName();
			}
		}
		return name;
	}
	
	public static List<ProductKind> getListProductKind() {
		List<ProductKind> list_product_kind = new ArrayList<ProductKind>();
		list_product_kind.add(new ProductKind(1,1,1,"PK001","จอ 13นิ้ว"));
		list_product_kind.add(new ProductKind(2,1,1,"PK002","จอ 15นิ้ว"));
		list_product_kind.add(new ProductKind(3,1,2,"PK003","จอ 13นิ้ว"));
		list_product_kind.add(new ProductKind(4,1,2,"PK004","จอ 15นิ้ว"));
		list_product_kind.add(new ProductKind(5,2,1,"PK005","เทปกาว"));
		list_product_kind.add(new ProductKind(6,2,1,"PK006","บับเบิ้ล"));
		list_product_kind.add(new ProductKind(7,2,2,"PK007","cool box"));
		list_product_kind.add(new ProductKind(8,2,2,"PK008","เจล"));
		
		return list_product_kind;
	}
	
	public static List<Company> getListCompany(){
		List<Company> list_company = new ArrayList<Company>();
		list_company.add(new Company(1, "IEL", "บริษัท อินเตอร์เอ็กซ์เพรส โลจิสติกส์ จำกัด", "0105539119508", "1 พระรามที่3 บางโพงพาง ยานนาวา กรุงเทพมหานคร 10120", "0-2682-3101", "contact@iel.co.th", "0-2682-3111"));
		list_company.add(new Company(2, "IELS", "บริษัท อินเตอร์ เอ็กซ์เพรส โลจิสติกส์ เซอร์วิสเซส จำกัด", "0105562044411", "4/1-4/3 บางโพงพาง ยานนาวา กรุงเทพมหานคร 10120", "-", "contact@iels.co.th", "-"));
		list_company.add(new Company(3, "IELM", "บริษัท อินเตอร์ เอ็กซ์เพรส โลจิสติกส์ แมเนจเม้นท์ จำกัด", "0105551043508", "1 พระรามที่3 บางโพงพาง ยานนาวา กรุงเทพมหานคร 10120", "0-2682-3101", "contact@ielm.co.th", "0-2682-3331"));
		list_company.add(new Company(4, "IELT", "บริษัท อินเตอร์ เอ็กซ์เพรส โลจิสติกส์ เทคโนโลยี จำกัด", "0105561212809", "1 พระรามที่3 บางโพงพาง ยานนาวา กรุงเทพมหานคร 10120", "0-2106-5678", "contact@ielt.co.th", "-"));
		list_company.add(new Company(5, "IELHD", "บริษัท อินเตอร์ เอ็กซ์เพรส โฮม ดิลิเวอรี่ จำกัด", "0105546019548", "1 พระรามที่3 บางโพงพาง ยานนาวา กรุงเทพมหานคร 10120", "0-2682-3101", "contact@ielhd.co.th", "0-2682-3111"));
		return list_company;
	}
	
	public static String getCompanyName(int company_id) {
		String name ="";
		List<Company> list_company = getListCompany();
		for (Company company : list_company) {
			if(company_id == company.getId()) {
				name = company.getName();
			}
		}
		return name;
	}
	
	public static List<WorkLine> getListWorkLine(){
		List<WorkLine> list_workline = new ArrayList<WorkLine>();
		 list_workline.add(new WorkLine(1, "WL01", "สายงานพัฒนาองค์กรเชิงกลยุทธ์", 1, 100000.00));
		 list_workline.add(new WorkLine(2, "WL02", "สายงานบริหารการกระจายสินค้า", 1, 100000.00));
		 list_workline.add(new WorkLine(3, "WL03", "สายงานบริหารสำนักงาน", 1, 100000.00));
		 list_workline.add(new WorkLine(4, "WL04", "สายงานบัญชีและการเงิน", 1, 100000.00));
		 list_workline.add(new WorkLine(5, "WL05", "สายงานพัฒนาธุรกิจ", 1, 100000.00));

		return list_workline;
	}
	
	public static String getWorkLineName(int work_line_id) {
		String name ="";
		List<WorkLine> list_work_line = getListWorkLine();
		for (WorkLine work_line : list_work_line) {
			if(work_line_id == work_line.getId()) {
				name = work_line.getName();
			}
		}
		return name;
	}
	
	public static List<Department> getListDepartment(){
		List<Department> list_department = new ArrayList<Department>();
		 list_department.add(new Department(1, "D01", "ฝ่ายจัดซื้อ", 3, 1, 100000.00));
		 list_department.add(new Department(2, "D02", "ฝ่ายเทคโนโลยีและสารสนเทศ", 3, 1, 100000.00));
		 
		return list_department;
	}
	
	public static String getDepartmentName(int department_id) {
		String name ="";
		List<Department> list_department = getListDepartment();
		for (Department department : list_department) {
			if(department_id == department.getId()) {
				name = department.getName();
			}
		}
		return name;
	}
	
	public static List<Section> getListSection(){
		List<Section> list_section = new ArrayList<Section>();
		 list_section.add(new Section(1, "S01", "จัดซื้อและบริการสำนักงาน", 1, 3, 1, 100000.00));
		 list_section.add(new Section(2, "S02", "จัดซื้อเชิงกลยุทธ์", 1, 3, 1, 100000.00));
		 list_section.add(new Section(3, "S03", "วิศวกรรม", 1, 3, 1, 100000.00));
		 list_section.add(new Section(4, "S04", "บริหารและจัดการโครงข่าย", 2, 3, 1, 100000.00));
		 list_section.add(new Section(5, "S05", "พัฒนาระบบสารสนเทศ", 2, 3, 1, 100000.00));

		 return list_section;
	}
	
	public static String getSectionName(int section_id) {
		String name ="";
		List<Section> list_section = getListSection();
		for (Section section : list_section) {
			if(section_id == section.getId()) {
				name = section.getName();
			}
		}
		return name;
	}
	
	public static List<Organization> getListOrganization(){
		List<Organization> list_organization = new ArrayList<Organization>();
		 list_organization.add(new Organization(1, "O01","ค่าใช้จ่าย", 2, 1, 3, 1, 100000.00));
		 list_organization.add(new Organization(2, "O02","ทรัพย์สิน", 1, 1, 3, 1, 100000.00));
		 list_organization.add(new Organization(3, "O03","สต๊อก", 1, 1, 3, 1, 100000.00));
		 list_organization.add(new Organization(4, "O04","ฮาร์ดแวร์", 4, 2, 3, 1, 100000.00));
		 list_organization.add(new Organization(5, "O05","ซอฟต์แวร์", 5, 2, 3, 1, 100000.00));
		 list_organization.add(new Organization(6, "O06","จัดหา", 2, 1, 3, 1, 100000.00));

		 return list_organization;
	}
	
	public static List<Warehouse> getListWarehouse(){
		List<Warehouse> list_warehouse = new ArrayList<Warehouse>();
		list_warehouse.add(new Warehouse(1, "WH01", "คลังกิ่งแก้ว", "9/99 หมู่ 7 ถนนกิ่งแก้ว ตำบลราชาเทวะ อำเภอบางพลี สมุทรปราการ 10540", "0-2106-5678", "contact@wh01.co.th", "-"));
		list_warehouse.add(new Warehouse(2, "WH02", "คลังพระราม3", "1 พระรามที่3 บางโพงพาง ยานนาวา กรุงเทพมหานคร 10120", "0-2682-3101", "contact@wh02.co.th", "0-2682-3111"));
		return list_warehouse;
	}
	
	public static List<Vendor> getListVendor(){
		List<Vendor> list_vendor = new ArrayList<Vendor>();
		Vendor vendor = new Vendor();
		vendor.setId(1);
		vendor.setCode("V001");
		vendor.setPre_name("บริษัท");
		vendor.setName("Apple Thailand");
		vendor.setFull_name("บริษัท Apple Thailand");
		vendor.setVendor_type_name("ผู้ผลิต");
		vendor.setOffice_hour("จ-ศ");
		vendor.setTrade_limit(300000);
		vendor.setCredit_days(30);
		vendor.setPayment("เงินเชื่อ");
		vendor.setFull_discount("มากกว่า 3 ชิ้น ลด 10%");
		vendor.setRemark("");
		list_vendor.add(vendor);
		
		vendor = new Vendor();
		vendor.setId(2);
		vendor.setCode("V002");
		vendor.setPre_name("บริษัท");
		vendor.setName("Dell Thailand");
		vendor.setFull_name("บริษัท Dell Thailand");
		vendor.setVendor_type_name("ตัวแทนจำหน่าย");
		vendor.setOffice_hour("จ-ส");
		vendor.setTrade_limit(500000);
		vendor.setCredit_days(15);
		vendor.setPayment("เงินเชื่อ");
		vendor.setFull_discount("มากกว่า 100,000 ลด 3,000");
		vendor.setRemark("");
		list_vendor.add(vendor);
		
		return list_vendor;
	}
	
	public static List<Product> getListProduct(String type){
		List<Product> list_product = new ArrayList<Product>();
		Product product = null;
		
		if("".equals(type) || "ทรัพย์สิน".equals(type)) {
			product = new Product();
			product.setId(1);
			product.setType("ทรัพย์สิน");
			product.setCode("P001");
			product.setBarcode("1234567890121");
			product.setName("notebook");
			product.setDiscription("core i7");
			product.setProduct_type_name("Computer");
			product.setProduct_group_name("Notebook");
			product.setProduct_kind_name("จอ 13นิ้ว");
			product.setBrand_name("Apple");
			product.setProduct_model_name("air pro");
			product.setPrice(49000);
			
			String full_name = product.getName() + " " + product.getDiscription();
			product.setFull_name(full_name);
			
			String full_discription = product.getProduct_type_name() + " " + 
													product.getProduct_group_name() + " " + 
													product.getProduct_kind_name() + " " + 
													product.getBrand_name() + " " + 
													product.getProduct_model_name();
			product.setFull_discription(full_discription);
			list_product.add(product);
		}
		
		if("".equals(type) || "ค่าใช้จ่าย".equals(type)) {
			product = new Product();
			product.setId(1);
			product.setType("ค่าใช้จ่าย");
			product.setCode("P002");
			product.setBarcode("1234567890122");
			product.setName("ค่าสร้างโรงจอดรถ");
			product.setDiscription("ค่าสร้างโรงจอดรถสำหรับ 20คัน");
			product.setProduct_type_name("ค่าก่อสร้าง");
			product.setProduct_group_name("สร้างใหม่");
			product.setProduct_kind_name("ค่าแรง");
			product.setBrand_name("-");
			product.setProduct_model_name("-");
			product.setPrice(500000);
			
			String full_name = product.getName() + " " + product.getDiscription();
			product.setFull_name(full_name);
			
			String full_discription = product.getProduct_type_name() + " " + 
													product.getProduct_group_name() + " " + 
													product.getProduct_kind_name() + " " + 
													product.getBrand_name() + " " + 
													product.getProduct_model_name();
			product.setFull_discription(full_discription);
			list_product.add(product);
		}
		
		if("".equals(type) || "สต๊อก".equals(type)) {
			product = new Product();
			product.setId(1);
			product.setType("Stock");
			product.setCode("P003");
			product.setBarcode("1234567890123");
			product.setName("ตู้เก็บเอกสาร");
			product.setDiscription("ตู้เก็บเอกสาร 120cm X 200cm");
			product.setProduct_type_name("อุปกรณ์สำนักงาน");
			product.setProduct_group_name("ตู้");
			product.setProduct_kind_name("120cm X 200cm");
			product.setBrand_name("Index");
			product.setProduct_model_name("Model 2019");
			product.setPrice(48000);
			
			String full_name = product.getName() + " " + product.getDiscription();
			product.setFull_name(full_name);
			
			String full_discription = product.getProduct_type_name() + " " + 
													product.getProduct_group_name() + " " + 
													product.getProduct_kind_name() + " " + 
													product.getBrand_name() + " " + 
													product.getProduct_model_name();
			product.setFull_discription(full_discription);
			list_product.add(product);
		}
		
		return list_product;
	}
	
	public static List<PurchaseRequisition> getListPurchaseRequisition(){
		List<PurchaseRequisition> list_purchase_requisition = new ArrayList<PurchaseRequisition>();
		
		PurchaseRequisition purchaseRequisition = new PurchaseRequisition();
		purchaseRequisition.setCode("PRAC2019110001");
		purchaseRequisition.setDoc_date("14/11/2562");
		purchaseRequisition.setType("ทรัพย์สิน");
		purchaseRequisition.setOrganization("ซอฟต์แวร์");
		purchaseRequisition.setRemark("ขอซื้อ notebook ให้พนักงานใหม่");
		
		list_purchase_requisition.add(purchaseRequisition);
		
		return list_purchase_requisition;
	}
	
	public static List<PurchaseRequisitionDetail> getListPurchaseRequisitionDetail(){
		List<PurchaseRequisitionDetail> list_purchase_requisition_detail = new ArrayList<PurchaseRequisitionDetail>();
		
		PurchaseRequisitionDetail purchaseRequisition_detail = new PurchaseRequisitionDetail();
		purchaseRequisition_detail.setCode("PRAC2019110001");
		purchaseRequisition_detail.setDoc_date("14/11/2562");
		purchaseRequisition_detail.setProduct_code("P001");
		purchaseRequisition_detail.setProduct_name("");
		purchaseRequisition_detail.setProduct_discription("notebook core i7\nComputer Notebook จอ 13นิ้ว Apple air pro");
		purchaseRequisition_detail.setAmount("10");
		purchaseRequisition_detail.setUnit("ชิ้น");
		
		list_purchase_requisition_detail.add(purchaseRequisition_detail);
		
		return list_purchase_requisition_detail;
	}
	
	public static List<PurchaseOrderDetail> getListPurchaseOrderDetail(){
		List<PurchaseOrderDetail> list_purchase_order_detail = new ArrayList<PurchaseOrderDetail>();
		PurchaseOrderDetail purchaseOrderDetail = new PurchaseOrderDetail();
		purchaseOrderDetail.setId(1);
		purchaseOrderDetail.setCode("P001");
		purchaseOrderDetail.setDetail("notebook core i7\nComputer Notebook จอ 13นิ้ว Apple air pro");
		purchaseOrderDetail.setDiscription("");
		purchaseOrderDetail.setSend_date("");
		purchaseOrderDetail.setAmount("5");
		purchaseOrderDetail.setUnit("ชิ้น");
		purchaseOrderDetail.setPrice_per_unit("49,000.00");
		purchaseOrderDetail.setDiscount("0.00");
		purchaseOrderDetail.setPrice("245,000.00");
		
		list_purchase_order_detail.add(purchaseOrderDetail);
		
		return list_purchase_order_detail;
	}
	
	public static List<PurchaseOrder> getListPurchaseOrder(){
		List<PurchaseOrder> list_purchase_order = new ArrayList<PurchaseOrder>();
		PurchaseOrder purchaseOrder = new PurchaseOrder();
		purchaseOrder.setCode("POAC2019110001");
		purchaseOrder.setDoc_date("14/11/2562");
		purchaseOrder.setPr_code("PRAC2019110001");
		purchaseOrder.setType("ทรัพย์สิน");
		purchaseOrder.setOrganization("ซอฟต์แวร์");
		purchaseOrder.setDetail("notebook core i7\nComputer Notebook จอ 13นิ้ว Apple air pro");
		purchaseOrder.setVendor("บริษัท Apple Thailand");
		purchaseOrder.setPrice("262,150.00");
		list_purchase_order.add(purchaseOrder);
		return list_purchase_order;
	}
	
	public static List<ReceiveOrder> getListReceiveOrder(){
		List<ReceiveOrder> list_receive_order = new ArrayList<ReceiveOrder>();
		ReceiveOrder receiveOrder = new ReceiveOrder();
		receiveOrder.setCode("RCAC2019110001");
		receiveOrder.setDoc_date("25/11/2562");
		receiveOrder.setReceive_date("25/11/2562");
		receiveOrder.setPo_code("POAC2019110001");
		receiveOrder.setVendor("บริษัท Apple Thailand");
		receiveOrder.setPrice("262,150.00");
		
		list_receive_order.add(receiveOrder);
		return list_receive_order;
	}
}
