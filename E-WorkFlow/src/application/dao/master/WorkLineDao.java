package application.dao.master;

import java.util.List;

import application.dao.Dao;
import application.model.master.WorkLine;

public class WorkLineDao extends Dao{
	
	public WorkLineDao() {
		this.setTableName("master.work_line");
		this.setObject(new WorkLine());
	}
	
	public List<Object> getByCompanyId(int company_id){
		String condition = "company_id = " + company_id;
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
}
