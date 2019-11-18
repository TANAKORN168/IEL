package application.manager.master;

import java.util.List;

import application.dao.master.SectionDao;
import application.model.master.Section;

public class SectionManager {

	private SectionDao dao;

	public SectionManager() {
		this.dao = new SectionDao();
	}

	@SuppressWarnings("unchecked")
	public List<Section> getByAll() {
		return (List<Section>)(Object)this.dao.getByAll();
	}
	
	public Section getById(int id) {
		return (Section)this.dao.getById(id);
	}
	
	public int add(Section section) {
		int id = this.dao.add(section);
		this.dao.commit();
		return id;
	}
	
	public int edit(Section section) {
		int id = this.dao.edit(section);
		this.dao.commit();
		return id;
	}

}
