package application.manager.master;

import java.util.List;

import application.dao.master.StatusMovementDao;
import application.model.master.StatusMovement;

@SuppressWarnings("unchecked")
public class StatusMovementManager {

	private StatusMovementDao dao;

	public StatusMovementManager() {
		this.dao = new StatusMovementDao();
	}

	public List<StatusMovement> getByAll() {
		return (List<StatusMovement>)(Object)this.dao.getByAll();
	}
	
	public List<StatusMovement> getByHeadId(int head_id, String head_class) {
		return (List<StatusMovement>)(Object)this.dao.getByHeadId(head_id, head_class);
	}
	
	public StatusMovement getByStatusCode(int head_id, String head_class, String status_code) {
		return (StatusMovement) this.dao.getByStatusCode(head_id, head_class, status_code);
	}
	
	public List<StatusMovement> getDataApproveAtDayAll(int users_id){
		return (List<StatusMovement>)(Object)this.dao.getDataApproveAtDayAll(users_id);
	}
	
	public List<StatusMovement> getDataApproveAtDayWait(int users_id){
		return (List<StatusMovement>)(Object)this.dao.getDataApproveAtDayWait(users_id);
	}
	
	public List<StatusMovement> getDataApproveAtDayApprove(int users_id, boolean approve) {
		return (List<StatusMovement>)(Object)this.dao.getDataApproveAtDayApprove(users_id,approve);
	}
	
	public int getCountWaitApprove(int head_id, String head_class) {
		return this.dao.getCountWaitApprove(head_id, head_class);
	}
	
	public int add(StatusMovement statusMovement) {
		int id = this.dao.add(statusMovement);
		this.dao.commit();
		return id;
	}
	
	public int edit(StatusMovement statusMovement) {
		int id = this.dao.edit(statusMovement);
		this.dao.commit();
		return id;
	}

}
