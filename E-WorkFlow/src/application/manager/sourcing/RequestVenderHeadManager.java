package application.manager.sourcing;

import java.util.List;

import application.Dao.sourcing.RequestVenderHeadDao;
import application.model.sourcing.RequestVenderHead;

public class RequestVenderHeadManager {

	private RequestVenderHeadDao dao;
	
	public RequestVenderHeadManager() {
		this.dao = new RequestVenderHeadDao();
	}
	
	@SuppressWarnings("unchecked")
	public List<RequestVenderHead> getByAll() {
		return (List<RequestVenderHead>)(Object)this.dao.getByAll();
	}
}
