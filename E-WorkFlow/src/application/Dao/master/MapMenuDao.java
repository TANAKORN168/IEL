package application.Dao.master;

import java.util.List;

import application.Dao.Dao;
import application.model.master.MapMenu;

public class MapMenuDao extends Dao{
	
	public MapMenuDao() {
		this.setTableName("master.map_menu");
		this.setObject(new MapMenu());
	}
	
	public List<Object> getByGroupMenuId(int group_menu_id) {
		String condition = "group_menu_id = " + group_menu_id + " order by menu_id, program_id";
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
	public List<Object> getByMenuId(int menu_id) {
		String condition = "menu_id = " + menu_id + " order by id";
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
	public List<Object> getByProgramId(int program_id) {
		String condition = "program_id = " + program_id + " order by id";
		List<Object> list = this.getByWhere(condition);
		return list;
	}
	
}
