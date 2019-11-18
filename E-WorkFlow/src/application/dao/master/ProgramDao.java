package application.dao.master;

import application.dao.Dao;
import application.model.master.Program;

public class ProgramDao extends Dao{
	
	public ProgramDao() {
		this.setTableName("master.program");
		this.setObject(new Program());
	}
	
}
