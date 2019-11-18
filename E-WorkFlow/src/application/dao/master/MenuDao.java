package application.dao.master;

import application.dao.Dao;
import application.model.master.Menu;

public class MenuDao extends Dao{
	
	public MenuDao() {
		this.setTableName("master.menu");
		this.setObject(new Menu());
	}
	
}
