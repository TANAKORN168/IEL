package application.model.master;

public class Organization {
	public String name_not_insert = "|name_not_insert|company_name|work_line_name|department_name|section_name|";
	private int id;
	private String code;
	private String name;
	private int work_line_id;
	private String work_line_name;
	private int company_id;
	private String company_name;
	private int department_id;
	private String department_name;
	private int section_id;
	private String section_name;
	private double budget_amount;

	public Organization() {
		
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

	public int getSection_id() {
		return section_id;
	}

	public void setSection_id(int section_id) {
		this.section_id = section_id;
	}

	public int getDepartment_id() {
		return department_id;
	}

	public void setDepartment_id(int department_id) {
		this.department_id = department_id;
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

	public String getWork_line_name() {
		return work_line_name;
	}

	public void setWork_line_name(String work_line_name) {
		this.work_line_name = work_line_name;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
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

	public double getBudget_amount() {
		return budget_amount;
	}

	public void setBudget_amount(double budget_amount) {
		this.budget_amount = budget_amount;
	}

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public Organization(int id, String code, String name, int section_id, int department_id, int work_line_id, int company_id,
			double budget_amount) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.work_line_id = work_line_id;
		this.company_id = company_id;
		this.department_id = department_id;
		this.section_id = section_id;
		this.budget_amount = budget_amount;
	}

}
