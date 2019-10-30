package application.manager.sourcing;

import java.text.DecimalFormat;
import java.util.List;

import application.Dao.master.RunningNumberDao;
import application.Dao.master.StatusMovementDao;
import application.Dao.sourcing.RequestVenderDetailDao;
import application.Dao.sourcing.RequestVenderHeadDao;
import application.model.master.RunningNumber;
import application.model.master.StatusMovement;
import application.model.sourcing.RequestVenderDetail;
import application.model.sourcing.RequestVenderHead;
import application.service.utility.MyDate;

@SuppressWarnings("unchecked")
public class RequestVenderHeadManager {

	private RequestVenderHeadDao dao;
	private RequestVenderDetailDao dao_detail;
	private StatusMovementDao dao_status_movement;
	private RunningNumberDao dao_running;
	
	public RequestVenderHeadManager() {
		this.dao = new RequestVenderHeadDao();
		this.dao_detail = new RequestVenderDetailDao();
		this.dao_status_movement = new StatusMovementDao();
		this.dao_running = new RunningNumberDao();
	}
	
	public List<RequestVenderHead> getByAll() {
		return (List<RequestVenderHead>)(Object)this.dao.getByAll();
	}

	public List<RequestVenderHead> getAllByUserCreate(String username) {
		return (List<RequestVenderHead>)(Object)this.dao.getAllByUserCreate(username);
	}
	
	public RequestVenderHead getById(int id) {
		return (RequestVenderHead)this.dao.getById(id);
	}
	
	@SuppressWarnings("unchecked")
	public void save(RequestVenderHead requestVenderHead) {
		
		try {
			int head_id = 0;
			if(requestVenderHead.getId() > 0) {
				head_id = requestVenderHead.getId();
				
				this.dao.edit(requestVenderHead);
			}else {
				String code = this.getRunningNumber("SC");
				requestVenderHead.setRequest_vender_code(code);
				head_id = this.dao.add(requestVenderHead);
			}
			
			List<RequestVenderDetail> list_detail_cancel = (List<RequestVenderDetail>)(Object)this.dao_detail.getByHeadId(head_id);
			for (RequestVenderDetail detail_cancel : list_detail_cancel) {
				this.dao_detail.delete(detail_cancel.getId());
			}
			
			for (RequestVenderDetail detail : requestVenderHead.getDetails()) {
				detail.setHead_id(head_id);
				this.dao_detail.add(detail);
			}
			
			List<StatusMovement> list_status_movement_cancel = (List<StatusMovement>)(Object)this.dao_status_movement.getByHeadId(head_id, requestVenderHead.getClass().getSimpleName());
			for (StatusMovement status_movement_cancel : list_status_movement_cancel) {
				this.dao_status_movement.delete(status_movement_cancel.getId());
			}
			
			for (StatusMovement status_movement : requestVenderHead.getList_status_movement()) {
				status_movement.setHead_id(head_id);
				this.dao_status_movement.add(status_movement);
			}
			
			this.dao.commit();
			this.dao_detail.commit();
			this.dao_status_movement.commit();
			this.dao_running.commit();
		} catch (Exception e) {
			
			System.out.println("SAVE[RequestVenderHeadManager] ERROR : " + e.getMessage());
			
			this.dao.rollback();
			this.dao_detail.rollback();
			this.dao_status_movement.rollback();
			this.dao_running.rollback();
		}
		
	}
	
	public void update_send_approve(RequestVenderHead requestVenderHead, List<StatusMovement> list_statusMovement) {
		try {
			this.dao.edit(requestVenderHead);
			
			for (StatusMovement statusMovement : list_statusMovement) {
				this.dao_status_movement.edit(statusMovement);
			}

			this.dao.commit();
			this.dao_status_movement.commit();
		} catch (Exception e) {
			
			System.out.println("update_send_approve[RequestVenderHeadManager] ERROR : " + e.getMessage());
			
			this.dao.rollback();
			this.dao_status_movement.rollback();
		}
	}
	
	private String getRunningNumber(String type) {
		type = type + MyDate.GetCurrentDate();
		RunningNumber runningNumber = (RunningNumber) this.dao_running.getByType(type);
		String running = "";
		int running_number = 1;
		if(runningNumber != null) {
			running_number = runningNumber.getRunning_number() + 1;
			running = type + new DecimalFormat("0000").format(running_number);
			
			runningNumber.setRunning_number(running_number);
			this.dao_running.edit(runningNumber);
		}else {
			running = type + new DecimalFormat("0000").format(running_number);
			
			runningNumber = new RunningNumber();
			runningNumber.setRunning_type(type);
			runningNumber.setRunning_number(running_number);
			this.dao_running.add(runningNumber);
		}
		return running;
	}
}
