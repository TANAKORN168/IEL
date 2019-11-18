package application.manager.sourcing;

import java.util.List;

import application.dao.sourcing.RequestVenderDetailDao;
import application.model.sourcing.RequestVenderDetail;

public class RequestVenderDetailManager {

	private RequestVenderDetailDao dao;
	
	public RequestVenderDetailManager() {
		this.dao = new RequestVenderDetailDao();
	}
	
	@SuppressWarnings("unchecked")
	public List<RequestVenderDetail> getByHeadId(int head_id) {
		return (List<RequestVenderDetail>)(Object)this.dao.getByHeadId(head_id);
	}
}
