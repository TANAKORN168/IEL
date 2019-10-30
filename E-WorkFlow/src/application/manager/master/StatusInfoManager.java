package application.manager.master;

import java.util.List;

import application.Dao.master.StatusInfoDao;
import application.model.master.StatusInfo;

@SuppressWarnings("unchecked")
public class StatusInfoManager {

	private StatusInfoDao dao;

	public StatusInfoManager() {
		this.dao = new StatusInfoDao();
	}

	public List<StatusInfo> getByAll() {
		return (List<StatusInfo>)(Object)this.dao.getByAll();
	}
	
	public List<StatusInfo> getByMainCode(String main_code) {
		return (List<StatusInfo>)(Object)this.dao.getByMainCode(main_code);
	}
	
	public StatusInfo getByStatusCode(String main_code, String status_code){
		return (StatusInfo)this.dao.getByStatusCode(main_code, status_code);
	}
	
	public int add(StatusInfo statusInfo) {
		int id = this.dao.add(statusInfo);
		this.dao.commit();
		return id;
	}
	
	public int edit(StatusInfo statusInfo) {
		int id = this.dao.edit(statusInfo);
		this.dao.commit();
		return id;
	}

}
