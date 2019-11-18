package application.model.sourcing;

import java.util.ArrayList;
import java.util.List;

public class CompanyContact {
	
	public String name_not_insert = "|name_not_insert|list_company_contact_detail|row_id_del|";
	private int id;
	private String name = "";
	private String address = "";
	private String location = "";
	private String contact_name = "";
	private String contact_tel = "";
    private String timeadd_date = "";
    private String timeadd_time = "";
    private String timeadd_user = "";
    private String timeupd_date = "";
    private String timeupd_time = "";
	private String timeupd_user = "";
	
	private String row_id_del = "";
    private List<CompanyContactDetail> list_company_contact_detail = new ArrayList<CompanyContactDetail>();
    
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getContact_name() {
		return contact_name;
	}

	public void setContact_name(String contact_name) {
		this.contact_name = contact_name;
	}

	public String getContact_tel() {
		return contact_tel;
	}

	public void setContact_tel(String contact_tel) {
		this.contact_tel = contact_tel;
	}

	public List<CompanyContactDetail> getList_company_contact_detail() {
		return list_company_contact_detail;
	}

	public void setList_company_contact_detail(List<CompanyContactDetail> list_company_contact_detail) {
		this.list_company_contact_detail = list_company_contact_detail;
	}

	public String getTimeadd_date() {
		return timeadd_date;
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

	public String getRow_id_del() {
		return row_id_del;
	}

	public void setRow_id_del(String row_id_del) {
		this.row_id_del = row_id_del;
	}

}
