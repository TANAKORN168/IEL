package application.Dao.master;

import application.Dao.Dao;
import application.model.master.Program;

public class ProgramDao extends Dao{
	
	public ProgramDao() {
		this.setTableName("master.program");
		this.setObject(new Program());
	}
	
}
