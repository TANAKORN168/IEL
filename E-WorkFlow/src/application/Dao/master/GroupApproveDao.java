package application.Dao.master;

import java.util.List;

import application.Dao.Dao;
import application.model.master.GroupApprove;

public class GroupApproveDao extends Dao{
	
	public GroupApproveDao() {
		this.setTableName("master.group_approve");
		this.setObject(new GroupApprove());
	}
	
	public Object getByHeadClass(String head_class) {
		String condition =  "head_class = '" + head_class + "'";
		List<Object> list = this.getByWhere(condition);
		return list.size() > 0 ? list.get(0) : null;
	}
	
}
