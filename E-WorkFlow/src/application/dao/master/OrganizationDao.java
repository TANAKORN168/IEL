package application.dao.master;

import java.util.List;

import application.dao.Dao;
import application.model.master.Organization;

public class OrganizationDao extends Dao{
	
	public OrganizationDao() {
		this.setTableName("master.organization");
		this.setObject(new Organization());
	}
	
	public List<Object> getByCompanyIdAndWorklineIdAndDepartmentIdAndSectionId(int company_id, int workline_id, int department_id, int section_id){
		String condition = "";
		if(company_id > 0) {
			condition += "company_id = " + company_id;
		}
		if(workline_id > 0) {
			condition += "workline_id = " + workline_id;
		}
		if(department_id > 0) {
			condition += "department_id = " + department_id;
		}
		if(section_id > 0) {
			condition += "section_id = " + section_id;
		}
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
}
