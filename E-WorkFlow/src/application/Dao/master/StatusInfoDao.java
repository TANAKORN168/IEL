package application.Dao.master;

import java.util.List;

import application.Dao.Dao;
import application.model.master.StatusInfo;

public class StatusInfoDao extends Dao{
	
	public StatusInfoDao() {
		this.setTableName("master.status_info");
		this.setObject(new StatusInfo());
	}
	
	public List<Object> getByMainCode(String main_code) {
		String codition = "main_code = '" + main_code + "'";
		List<Object> list = this.getByWhere(codition);
		return list;
	}
	
}
