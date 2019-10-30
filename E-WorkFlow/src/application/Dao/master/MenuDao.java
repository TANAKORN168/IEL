package application.Dao.master;

import application.Dao.Dao;
import application.model.master.Menu;

public class MenuDao extends Dao{
	
	public MenuDao() {
		this.setTableName("master.menu");
		this.setObject(new Menu());
	}
	
}
