package application.manager.master;

import java.util.ArrayList;
import java.util.List;

import application.Dao.master.GroupMenuDao;
import application.Dao.master.MapMenuDao;
import application.Dao.master.MenuDao;
import application.Dao.master.ProgramDao;
import application.model.master.GroupMenu;
import application.model.master.MapMenu;
import application.model.master.Menu;
import application.model.master.Program;

public class MapMenuManager {

	private MapMenuDao dao;
	private MenuDao menuDao;
	private ProgramDao programDao;
	private GroupMenuDao groupMenuDao;

	public MapMenuManager() {
		this.dao = new MapMenuDao();
		this.menuDao = new MenuDao();
		this.programDao = new ProgramDao();
		this.groupMenuDao = new GroupMenuDao();
	}

	@SuppressWarnings("unchecked")
	public List<Menu> getByGroupMenuCode(String group_menu_code) {
		List<Menu> list_menu = new ArrayList<Menu>();
		
		if(group_menu_code == null || "".equals(group_menu_code))
			return new ArrayList<Menu>();
			
//		String str_program = "";
//		String str_menu = "";
		
		GroupMenu groupMenu = (GroupMenu) this.groupMenuDao.getByCode(group_menu_code);
		List<MapMenu> list_map_menu_by_group = (List<MapMenu>)(Object)this.dao.getByGroupMenuId(groupMenu.getId());
		Menu menu = null;
		for (MapMenu map_menu_by_group : list_map_menu_by_group) {
			Program program = (Program) this.programDao.getById(map_menu_by_group.getProgram_id());
			
			if(menu == null || menu.getId() != map_menu_by_group.getMenu_id()) {
				menu = (Menu) this.menuDao.getById(map_menu_by_group.getMenu_id());
				list_menu.add(menu);
			}
			menu.getList_program().add(program);
		}
		
		
//		GroupMenu groupMenu = (GroupMenu) this.groupMenuDao.getByCode(group_menu_code);
//		List<MapMenu> list_map_menu_by_group = (List<MapMenu>)(Object)this.dao.getByGroupMenuId(groupMenu.getId());
//		for (MapMenu map_menu_by_group : list_map_menu_by_group) {
//			Menu menu = (Menu) this.menuDao.getById(map_menu_by_group.getMenu_id());
//			
//			if(str_menu.indexOf("|"+menu.getId()+"|") >= 0)
//				continue;
//			
//			str_menu += "|" + menu.getId() + "|";
//			
//			List<MapMenu> list_map_menu_by_menu = (List<MapMenu>)(Object)this.dao.getByMenuId(menu.getId());
//			for (MapMenu map_menu_by_menu : list_map_menu_by_menu) {
//				Program program = (Program) this.programDao.getById(map_menu_by_menu.getProgram_id());
//				
//				if(str_program.indexOf("|"+program.getId()+"|") >= 0)
//					continue;
//				
//				menu.getList_program().add(program);
//				
//				str_program += "|" + program.getId() + "|";
//			}
//			
//			list_menu.add(menu);
//		}
		
		return list_menu;
	}
	
}
