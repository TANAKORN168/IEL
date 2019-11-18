package application.dao.master;

import application.dao.Dao;
import application.model.master.GroupMenu;

public class GroupMenuDao extends Dao{
	
	public GroupMenuDao() {
		this.setTableName("master.group_menu");
		this.setObject(new GroupMenu());
	}
	
}
