package application.model.master;

import java.util.ArrayList;
import java.util.List;

public class GroupApprove {

	public String name_not_insert = "|name_not_insert|list_object_approve|size|";
	private int id;
	private String head_class;
	private String name;
	private int size;
	
	private List<ObjectApprove> list_object_approve;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getHead_class() {
		return head_class;
	}

	public void setHead_class(String head_class) {
		this.head_class = head_class;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getSize() {
		if(size == 0) size = list_object_approve.size();
		return size;
	}

	public void setSize(int size) {
		this.size = size;
	}

	public List<ObjectApprove> getList_object_approve() {
		if(list_object_approve == null) list_object_approve = new ArrayList<ObjectApprove>();
		return list_object_approve;
	}

	public void setList_object_approve(List<ObjectApprove> list_object_approve) {
		this.list_object_approve = list_object_approve;
	}

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

}
