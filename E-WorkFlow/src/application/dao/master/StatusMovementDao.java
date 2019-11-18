package application.dao.master;

import java.util.List;

import application.dao.Dao;
import application.model.master.StatusMovement;
import application.service.utility.MyDate;

public class StatusMovementDao extends Dao{
	
	public StatusMovementDao() {
		this.setTableName("master.status_movement");
		this.setObject(new StatusMovement());
	}
	
	public List<Object> getByHeadId(int head_id, String head_class) {
		String condition = "head_id = " + head_id + " and head_class = '"+head_class+"' order by status_code";
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
	public Object getByStatusCode(int head_id, String head_class, String status_code) {
		String condition = "head_id = " + head_id + " and head_class = '"+head_class+"' and status_code = '" + status_code + "'";
		List<Object> list = this.getByWhere(condition);
		return list.size() > 0 ? list.get(0) : null;
	}
	
	public List<Object> getDataApproveAtDayAll(int users_id){
		String condition = "users_id = " + users_id;
		condition += " and send_approve = true";
		condition += " and (stamp = false or timeupd_date = '" + MyDate.GetCurrentDate() + "')";
		condition += " order by head_class";
		
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
	public List<Object> getDataApproveAtDayWait(int users_id){
		String condition = "users_id = " + users_id;
		condition += " and send_approve = true";
		condition += " and stamp = false";
		condition += " order by head_class";
		
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
	public List<Object> getDataApproveAtDayApprove(int users_id, boolean approve){
		String condition = "users_id = " + users_id;
		condition += " and send_approve = true";
		condition += " and stamp = true";
		condition += " and approve = " + approve;
		condition += " and timeupd_date = '" + MyDate.GetCurrentDate() + "'";
		condition += " order by head_class";
		
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
	public int getCountWaitApprove(int head_id, String head_class){
		String condition = "approve = false";
		condition += " and head_id = " + head_id;
		condition += " and head_class = '" + head_class + "'";
		condition += " order by head_class";
		
		List<Object> list = this.getByWhere(condition);
		return list.size();
	}
	
}
