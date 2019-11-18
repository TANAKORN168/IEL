package application.model.master;

public class WorkLine {
	public String name_not_insert = "|name_not_insert|company_name|";
	private int id;
	private String code;
	private String name;
	private int company_id;
	private String company_name;
	private double budget_amount;

	public WorkLine() {
		
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

	public int getCompany_id() {
		return company_id;
	}

	public void setCompany_id(int company_id) {
		this.company_id = company_id;
	}

	public String getCompany_name() {
		return company_name;
	}

	public void setCompany_name(String company_name) {
		this.company_name = company_name;
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

	public WorkLine(int id, String code, String name, int company_id, double budget_amount) {
		super();
		this.id = id;
		this.code = code;
		this.name = name;
		this.company_id = company_id;
		this.budget_amount = budget_amount;
	}

}
