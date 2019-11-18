package application.dao.master;

import application.dao.Dao;
import application.model.master.StatusMovementDetail;

public class StatusMovementDetailDao extends Dao{
	
	public StatusMovementDetailDao() {
		this.setTableName("master.status_movement_detail");
		this.setObject(new StatusMovementDetail());
	}
	
}
