package application.Dao.master;

import java.util.List;

import application.Dao.Dao;
import application.model.master.RunningNumber;

public class RunningNumberDao extends Dao{
	
	public RunningNumberDao() {
		this.setTableName("master.running_number");
		this.setObject(new RunningNumber());
	}
	
	public Object getByType(String type) {
		String condition =  "running_type = '" + type + "'";
		List<Object> list = this.getByWhere(condition);
		return list.size() > 0 ? list.get(0) : null;
	}
	
}
