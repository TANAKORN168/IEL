package application.manager.master;

import java.util.List;

import application.dao.master.OrganizationDao;
import application.model.master.Organization;

public class OrganizationManager {

	private OrganizationDao dao;

	public OrganizationManager() {
		this.dao = new OrganizationDao();
	}

	@SuppressWarnings("unchecked")
	public List<Organization> getByAll() {
		return (List<Organization>)(Object)this.dao.getByAll();
	}
	
	public Organization getById(int id) {
		return (Organization)this.dao.getById(id);
	}
	
	public int add(Organization organization) {
		int id = this.dao.add(organization);
		this.dao.commit();
		return id;
	}
	
	public int edit(Organization organization) {
		int id = this.dao.edit(organization);
		this.dao.commit();
		return id;
	}

}
