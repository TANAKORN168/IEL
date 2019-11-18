package application.manager.sourcing;

import java.util.List;

import application.dao.master.RunningNumberDao;
import application.dao.master.StatusInfoDao;
import application.dao.master.StatusMovementDao;
import application.dao.master.StatusMovementDetailDao;
import application.dao.sourcing.RequestVenderDetailDao;
import application.dao.sourcing.RequestVenderHeadDao;
import application.model.master.RunningNumber;
import application.model.master.StatusInfo;
import application.model.master.StatusMovement;
import application.model.master.StatusMovementDetail;
import application.model.sourcing.RequestVenderDetail;
import application.model.sourcing.RequestVenderHead;
import application.model.utility.Utils;
import application.service.utility.MyDate;

@SuppressWarnings("unchecked")
public class RequestVenderHeadManager {

	private RequestVenderHeadDao dao;
	private RequestVenderDetailDao dao_detail;
	private StatusMovementDao dao_status_movement;
	private StatusMovementDetailDao dao_status_movement_detail;
	private RunningNumberDao dao_running;
	private StatusInfoDao dao_status_info;
	
	public RequestVenderHeadManager() {
		this.dao = new RequestVenderHeadDao();
		this.dao_detail = new RequestVenderDetailDao();
		this.dao_status_movement = new StatusMovementDao();
		this.dao_status_movement_detail = new StatusMovementDetailDao();
		this.dao_running = new RunningNumberDao();
		this.dao_status_info = new StatusInfoDao();
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
			running = type + Utils.getNumberFormat("0000", running_number);
			
			runningNumber.setRunning_number(running_number);
			this.dao_running.edit(runningNumber);
		}else {
			running = type + Utils.getNumberFormat("0000", running_number);
			
			runningNumber = new RunningNumber();
			runningNumber.setRunning_type(type);
			runningNumber.setRunning_number(running_number);
			this.dao_running.add(runningNumber);
		}
		return running;
	}
	
	public void reject(int id, String username, String message) {
		
		String timeupd_date = MyDate.GetCurrentDate();
		String timeupd_time = MyDate.GetCurrentTime();
		try {
			RequestVenderHead requestVenderHead = (RequestVenderHead) this.dao.getById(id);
	
			List<StatusMovement> list_status_movement = (List<StatusMovement>)(Object)this.dao_status_movement.getByHeadId(id, requestVenderHead.getClass().getSimpleName());
			for (StatusMovement statusMovement : list_status_movement) {
				if(!"00".equals(statusMovement.getStatus_code())) {
					statusMovement.setDate_time("");
					statusMovement.setStamp(false);
				}
				
				String str = statusMovement.getStatus_code();
				int ii = Integer.valueOf(str);
				String status_code = Utils.getNumberFormat("00", --ii);
				
				if(requestVenderHead.getStatus_code().equals(status_code)) {
					StatusMovementDetail statusMovementDetail = new StatusMovementDetail();
					statusMovementDetail.setHead_id(statusMovement.getId());
					statusMovementDetail.setDiscription(message);
					statusMovementDetail.setTimeadd_date(timeupd_date);
					statusMovementDetail.setTimeadd_time(timeupd_time);
					statusMovementDetail.setTimeadd_user(username);
					
					this.dao_status_movement_detail.add(statusMovementDetail);
				}
				
				statusMovement.setSend_approve(false);
				statusMovement.setApprove(false);
				statusMovement.setTimeupd_date(timeupd_date);
				statusMovement.setTimeupd_time(timeupd_time);
				statusMovement.setTimeupd_user(username);
				
				this.dao_status_movement.edit(statusMovement);
			}
	
			requestVenderHead.setSend_approve(false);
			
			StatusInfo statusInfo = (StatusInfo) this.dao_status_info.getByStatusCode(requestVenderHead.getMain_code(), "00");
			requestVenderHead.setStatus_code(statusInfo.getStatus_code());
			requestVenderHead.setStatus_name(statusInfo.getStatus_name());
			
			requestVenderHead.setTimeupd_date(timeupd_date);
			requestVenderHead.setTimeupd_time(timeupd_time);
			requestVenderHead.setTimeupd_user(username);
			this.dao.edit(requestVenderHead);
			
			this.dao.commit();
			this.dao_status_movement.commit();
			this.dao_status_movement_detail.commit();
		}catch (Exception e) {
			
			System.out.println("reject[RequestVenderHeadManager] ERROR : " + e.getMessage());
			this.dao.rollback();
			this.dao_status_movement.rollback();
			this.dao_status_movement_detail.rollback();
		}
	}
	
	public void  ok(int id, String username, String message) {
		String timeupd_date = MyDate.GetCurrentDate();
		String timeupd_time = MyDate.GetCurrentTime();
		try {
			RequestVenderHead requestVenderHead = (RequestVenderHead) this.dao.getById(id);
			String str = requestVenderHead.getStatus_code();
			int ii = Integer.valueOf(str);
			String status_code = Utils.getNumberFormat("00", ++ii);
			String status_code2 = Utils.getNumberFormat("00", ++ii);
			
			List<StatusMovement> list_status_movement = (List<StatusMovement>)(Object)this.dao_status_movement.getByHeadId(id, requestVenderHead.getClass().getSimpleName());
			for (StatusMovement statusMovement : list_status_movement) {
				if(statusMovement.getStatus_code().equals(status_code)) {
					StatusMovementDetail statusMovementDetail = addStatusMovementDetail(statusMovement.getId(), message, timeupd_date, timeupd_time, username);
					this.dao_status_movement_detail.add(statusMovementDetail);
					
					statusMovement.setDate_time(MyDate.STOD(timeupd_date)+" " +timeupd_time);
					statusMovement.setStamp(true);
					statusMovement.setApprove(true);
					statusMovement.setTimeupd_date(timeupd_date);
					statusMovement.setTimeupd_time(timeupd_time);
					statusMovement.setTimeupd_user(username);
					this.dao_status_movement.edit(statusMovement);
				}
				
				if(statusMovement.getStatus_code().equals(status_code2)) {
					statusMovement.setSend_approve(true);
					this.dao_status_movement.edit(statusMovement);
				}
			}
			
			StatusInfo statusInfo = (StatusInfo) this.dao_status_info.getByStatusCode(requestVenderHead.getMain_code(), status_code);
			requestVenderHead.setStatus_code(statusInfo.getStatus_code());
			requestVenderHead.setStatus_name(statusInfo.getStatus_name());
			
			requestVenderHead.setTimeupd_date(timeupd_date);
			requestVenderHead.setTimeupd_time(timeupd_time);
			requestVenderHead.setTimeupd_user(username);
			this.dao.edit(requestVenderHead);
			
			this.dao.commit();
			this.dao_status_movement.commit();
			this.dao_status_movement_detail.commit();
		}catch (Exception e) {
			
			System.out.println("ok[RequestVenderHeadManager] ERROR : " + e.getMessage());
			this.dao.rollback();
			this.dao_status_movement.rollback();
			this.dao_status_movement_detail.rollback();
		}
	}
	
	public void not_approve(int id, String username, String message) {
		
	}
	
	public void approve(int id, String username, String message) {
		
	}
	
	private StatusMovementDetail addStatusMovementDetail(int head_id, String message, String timeupd_date, String timeupd_time, String username) {
		StatusMovementDetail statusMovementDetail = new StatusMovementDetail();
		statusMovementDetail.setHead_id(head_id);
		statusMovementDetail.setDiscription(message);
		statusMovementDetail.setTimeadd_date(timeupd_date);
		statusMovementDetail.setTimeadd_time(timeupd_time);
		statusMovementDetail.setTimeadd_user(username);
		
		return statusMovementDetail;
	}
}
