package application.Dao.sourcing;

import java.util.List;

import application.Dao.Dao;
import application.model.sourcing.RequestVenderDetail;

public class RequestVenderDetailDao extends Dao{
	
	public RequestVenderDetailDao() {
		this.setTableName("ewf.request_vender_detail");
		this.setObject(new RequestVenderDetail());
	}
	
	public List<Object> getByHeadId(int head_id) {
		String condition = "head_id = " + head_id;
		List<Object> list = this.getByWhere(condition);
		return list;
	}

}
