package application.manager.master;

import java.util.List;

import application.dao.master.CompanyDao;
import application.model.master.Company;

public class CompanyManager {

	private CompanyDao dao;

	public CompanyManager() {
		this.dao = new CompanyDao();
	}

	@SuppressWarnings("unchecked")
	public List<Company> getByAll() {
		return (List<Company>)(Object)this.dao.getByAll();
	}
	
	public Company getById(int id) {
		return (Company)this.dao.getById(id);
	}
	
	public int add(Company company) {
		int id = this.dao.add(company);
		this.dao.commit();
		return id;
	}
	
	public int edit(Company company) {
		int id = this.dao.edit(company);
		this.dao.commit();
		return id;
	}

}
