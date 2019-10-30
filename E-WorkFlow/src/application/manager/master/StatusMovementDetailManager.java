package application.manager.master;

import java.util.List;

import application.Dao.master.StatusMovementDetailDao;
import application.model.master.StatusMovementDetail;

public class StatusMovementDetailManager {

	private StatusMovementDetailDao dao;

	public StatusMovementDetailManager() {
		this.dao = new StatusMovementDetailDao();
	}

	@SuppressWarnings("unchecked")
	public List<StatusMovementDetail> getByAll() {
		return (List<StatusMovementDetail>)(Object)this.dao.getByAll();
	}
	
	public int add(StatusMovementDetail statusMovementDetail) {
		int id = this.dao.add(statusMovementDetail);
		this.dao.commit();
		return id;
	}
	
	public int edit(StatusMovementDetail statusMovementDetail) {
		int id = this.dao.edit(statusMovementDetail);
		this.dao.commit();
		return id;
	}

}
