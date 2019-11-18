package application.manager.master;

import java.util.List;

import application.dao.master.WorkLineDao;
import application.model.master.WorkLine;

public class WorklineManager {

	private WorkLineDao dao;

	public WorklineManager() {
		this.dao = new WorkLineDao();
	}

	@SuppressWarnings("unchecked")
	public List<WorkLine> getByAll() {
		return (List<WorkLine>)(Object)this.dao.getByAll();
	}
	
	public WorkLine getById(int id) {
		return (WorkLine)this.dao.getById(id);
	}
	
	public int add(WorkLine workline) {
		int id = this.dao.add(workline);
		this.dao.commit();
		return id;
	}
	
	public int edit(WorkLine workline) {
		int id = this.dao.edit(workline);
		this.dao.commit();
		return id;
	}

}
