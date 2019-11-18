package application.dao.master;

import java.util.List;

import application.dao.Dao;
import application.model.master.Department;

public class DepartmentDao extends Dao{
	
	public DepartmentDao() {
		this.setTableName("master.department");
		this.setObject(new Department());
	}
	
	public List<Object> getByCompanyIdAndWorklineId(int company_id, int workline_id){
		String condition = "";
		if(company_id > 0) {
			condition += "company_id = " + company_id;
		}
		if(workline_id > 0) {
			condition += "workline_id = " + workline_id;
		}
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
}
