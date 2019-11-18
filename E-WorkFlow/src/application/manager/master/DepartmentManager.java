package application.manager.master;

import java.util.List;

import application.dao.master.DepartmentDao;
import application.model.master.Department;

public class DepartmentManager {

	private DepartmentDao dao;

	public DepartmentManager() {
		this.dao = new DepartmentDao();
	}

	@SuppressWarnings("unchecked")
	public List<Department> getByAll() {
		return (List<Department>)(Object)this.dao.getByAll();
	}
	
	public Department getById(int id) {
		return (Department)this.dao.getById(id);
	}
	
	public int add(Department department) {
		int id = this.dao.add(department);
		this.dao.commit();
		return id;
	}
	
	public int edit(Department department) {
		int id = this.dao.edit(department);
		this.dao.commit();
		return id;
	}

}
