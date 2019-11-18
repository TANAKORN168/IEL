package application.dao.master;

import java.util.List;

import application.dao.Dao;
import application.model.master.StatusInfo;

public class StatusInfoDao extends Dao{
	
	public StatusInfoDao() {
		this.setTableName("master.status_info");
		this.setObject(new StatusInfo());
	}
	
	public List<Object> getByMainCode(String main_code) {
		String condition = "main_code = '" + main_code + "' order by status_code";
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
	public Object getByStatusCode(String main_code, String status_code) {
		String condition =  "main_code = '" + main_code + "' and status_code = '" + status_code + "'";
		List<Object> list = this.getByWhere(condition);
		return list.size() > 0 ? list.get(0) : null;
	}
	
}
