package application.Dao;

import java.util.List;

import application.model.master.Users;

public class UsersDao extends Dao{
	
	public UsersDao() {
		this.setTableName("master.users");
		this.setObject(new Users());
	}
	
	public Object getByUsernamePassword(String username, String password) {
		String codition = "username = '" + username + "' and password = '" + password + "'";
		List<Object> list = this.getByWhere(codition);
		return list.size() > 0 ? list.get(0) : null;
	}
}
