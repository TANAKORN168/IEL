package application.Dao.master;

import application.Dao.Dao;
import application.model.master.Company;

public class CompanyDao extends Dao{
	
	public CompanyDao() {
		this.setTableName("master.company");
		this.setObject(new Company());
	}
	
}