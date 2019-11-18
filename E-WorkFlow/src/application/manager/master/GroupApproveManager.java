package application.manager.master;

import application.dao.master.GroupApproveDao;
import application.model.master.GroupApprove;

public class GroupApproveManager {

	private GroupApproveDao dao;

	public GroupApproveManager() {
		this.dao = new GroupApproveDao();
	}

	public GroupApprove getByHeadClass(String head_class) {
		return (GroupApprove) this.dao.getByHeadClass(head_class);
	}
}
