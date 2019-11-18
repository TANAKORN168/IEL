package application.dao.master;

import java.util.List;

import application.dao.Dao;
import application.model.master.Section;

public class SectionDao extends Dao{
	
	public SectionDao() {
		this.setTableName("master.section");
		this.setObject(new Section());
	}
	
	public List<Object> getByCompanyIdAndWorklineIdAndDepartmentId(int company_id, int workline_id, int department_id){
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
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
}
