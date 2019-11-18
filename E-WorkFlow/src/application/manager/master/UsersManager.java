package application.manager.master;

import java.util.List;

import application.dao.master.UsersDao;
import application.model.master.Users;

@SuppressWarnings("unchecked")
public class UsersManager {

	private UsersDao dao;

	public UsersManager() {
		this.dao = new UsersDao();
	}

	public Users getById(int id) {
		return (Users)this.dao.getById(id);
	}

	public List<Users> getByAll() {
		return (List<Users>)(Object)this.dao.getByAll();
	}
	
	public Users getByUsernamePassword(String username, String password) {
		return (Users) this.dao.getByUsernamePassword(username, password);
	}
	
	public List<Users> getByOrgCode(String org_code) {
		return (List<Users>)(Object)this.dao.getByOrgCode(org_code);
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
