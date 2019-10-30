package application.model.master;

import java.util.ArrayList;
import java.util.List;

public class Menu {
	public String name_not_insert = "|name_not_insert|list_program|";
	private int id;
	private String code;
	private String name;
	
	private List<Program> list_program;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Program> getList_program() {
		if(list_program == null) list_program = new ArrayList<Program>();
		return list_program;
	}

	public void setList_program(List<Program> list_program) {
		this.list_program = list_program;
	}

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

}
