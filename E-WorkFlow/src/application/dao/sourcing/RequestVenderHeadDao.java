package application.dao.sourcing;

import java.util.List;

import application.dao.Dao;
import application.model.sourcing.RequestVenderHead;

public class RequestVenderHeadDao extends Dao{
	
	public RequestVenderHeadDao() {
		this.setTableName("ewf.request_vender_head");
		this.setObject(new RequestVenderHead());
	}
	
	public List<Object> getAllByUserCreate(String username) {
		String condition = "timeadd_user = '" + username + "' order by timeadd_date, timeadd_time";
		List<Object> list = this.getByWhere(condition);
		return list;
	}

}
