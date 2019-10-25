package application.manager;

import java.util.List;

import application.Dao.UsersDao;
import application.model.master.Users;

public class UsersManager {

	private UsersDao dao;

	public UsersManager() {
		this.dao = new UsersDao();
	}

	@SuppressWarnings("unchecked")
	public List<Users> getByAll() {
		return (List<Users>)(Object)this.dao.getByAll();
	}
	
	public Users getByUsernamePassword(String username, String password) {
		return (Users) this.dao.getByUsernamePassword(username, password);
	}
	
	public int add(Users Users) {
		int id = this.dao.add(Users);
		this.dao.commit();
		return id;
	}
	
	public int edit(Users Users) {
		int id = this.dao.edit(Users);
		this.dao.commit();
		return id;
	}

}
