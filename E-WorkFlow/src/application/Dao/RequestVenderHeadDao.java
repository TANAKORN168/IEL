package application.Dao;

import application.model.sourcing.RequestVenderHead;

public class RequestVenderHeadDao extends Dao{
	
	public RequestVenderHeadDao() {
		this.setTableName("ewf.request_vender_head");
		this.setObject(new RequestVenderHead());
	}

}
