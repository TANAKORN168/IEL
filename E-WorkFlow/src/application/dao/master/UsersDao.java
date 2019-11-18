package application.dao.master;

import java.util.List;

import application.dao.Dao;
import application.model.master.Users;

public class UsersDao extends Dao{
	
	public UsersDao() {
		this.setTableName("master.users");
		this.setObject(new Users());
	}
	
	public Object getByUsernamePassword(String username, String password) {
		String condition = "username = '" + username + "' and password = '" + password + "'";
		List<Object> list = this.getByWhere(condition);
		return list.size() > 0 ? list.get(0) : null;
	}
	
	public List<Object> getByOrgCode(String org_code) {
		String condition = "org_code = '" + org_code + "'";
		List<Object> list = this.getByWhere(condition);
		return list;
	}
}
