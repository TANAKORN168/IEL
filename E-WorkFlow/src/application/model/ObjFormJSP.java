package application.model;

import java.util.ArrayList;
import java.util.List;

import application.model.sourcing.CompanyContact;
import application.model.sourcing.CompanyProduct;

public class ObjFormJSP {

	private int id;
	private String action;
	private String level;
	private String status;
	private String str1,str2,str3,str4,str5,str6,str7,str8,str9,str10;
	private boolean bool1;
	
	private List<CompanyContact> list_company_contact = new ArrayList<CompanyContact>();
	private List<CompanyProduct> list_company_product = new ArrayList<CompanyProduct>();

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getStr1() {
		return str1;
	}

	public void setStr1(String str1) {
		this.str1 = str1;
	}

	public String getStr2() {
		return str2;
	}

	public void setStr2(String str2) {
		this.str2 = str2;
	}

	public String getStr3() {
		return str3;
	}

	public void setStr3(String str3) {
		this.str3 = str3;
	}

	public String getStr4() {
		return str4;
	}

	public void setStr4(String str4) {
		this.str4 = str4;
	}

	public String getStr5() {
		return str5;
	}

	public void setStr5(String str5) {
		this.str5 = str5;
	}

	public String getStr6() {
		return str6;
	}

	public void setStr6(String str6) {
		this.str6 = str6;
	}

	public String getStr7() {
		return str7;
	}

	public void setStr7(String str7) {
		this.str7 = str7;
	}

	public String getStr8() {
		return str8;
	}

	public void setStr8(String str8) {
		this.str8 = str8;
	}

	public String getStr9() {
		return str9;
	}

	public void setStr9(String str9) {
		this.str9 = str9;
	}

	public String getStr10() {
		return str10;
	}

	public void setStr10(String str10) {
		this.str10 = str10;
	}

	public boolean isBool1() {
		return bool1;
	}

	public void setBool1(boolean bool1) {
		this.bool1 = bool1;
	}

	public List<CompanyContact> getList_company_contact() {
		return list_company_contact;
	}

	public void setList_company_contact(List<CompanyContact> list_company_contact) {
		this.list_company_contact = list_company_contact;
	}

	public List<CompanyProduct> getList_company_product() {
		return list_company_product;
	}

	public void setList_company_product(List<CompanyProduct> list_company_product) {
		this.list_company_product = list_company_product;
	}

}
