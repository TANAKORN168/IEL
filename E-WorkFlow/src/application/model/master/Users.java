package application.model.master;

//ALTER TABLE master.users ADD COLUMN id SERIAL PRIMARY KEY;
public class Users {
	public String name_not_insert = "|name_not_insert|company_name|work_line_name|department_name|section_name|organization_name|";
	private int id;
	private String code;
	private String name;
	private String position;
	private String url_img;
	private String url_signature;
	private int company_id;
	private int work_line_id;
	private int department_id;
	private int section_id;
	private int organization_id;
	private String username;
	private String password;
	private String org_code;
	private int level;
	private String group_menu_code;
	
	private String company_name;
	private String work_line_name;
	private String department_name;
	private String section_name;
	private String organization_name;

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

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	public int getWork_line_id() {
		return work_line_id;
	}

	public void setWork_line_id(int work_line_id) {
		this.work_line_id = work_line_id;
	}

	public int getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
	}

	public int getSection_id() {
		return section_id;
	}

	public void setSection_id(int section_id) {
		this.section_id = section_id;
	}

	public int getOrganization_id() {
		return organization_id;
	}

	public void setOrganization_id(int organization_id) {
		this.organization_id = organization_id;
	}

	public String getUrl_img() {
		return url_img;
	}

	public void setUrl_img(String url_img) {
		this.url_img = url_img;
	}

	public String getUrl_signature() {
		return url_signature;
	}

	public void setUrl_signature(String url_signature) {
		this.url_signature = url_signature;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getOrg_code() {
		return org_code;
	}

	public void setOrg_code(String org_code) {
		this.org_code = org_code;
	}

	public int getLevel() {
		return level;
	}

	public void setLevel(int level) {
		this.level = level;
	}

	public String getGroup_menu_code() {
		return group_menu_code;
	}

	public void setGroup_menu_code(String group_menu_code) {
		this.group_menu_code = group_menu_code;
	}

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
	}

	public String getWork_line_name() {
		return work_line_name;
	}

	public void setWork_line_name(String work_line_name) {
		this.work_line_name = work_line_name;
	}

	public String getDepartment_name() {
		return department_name;
	}

	public void setDepartment_name(String department_name) {
		this.department_name = department_name;
	}

	public String getSection_name() {
		return section_name;
	}

	public void setSection_name(String section_name) {
		this.section_name = section_name;
	}

	public String getOrganization_name() {
		return organization_name;
	}

	public void setOrganization_name(String organization_name) {
		this.organization_name = organization_name;
	}

}
