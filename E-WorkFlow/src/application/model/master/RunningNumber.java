package application.model.master;

public class RunningNumber {

	public String name_not_insert = "|name_not_insert|";
	private int id;
	private String running_type;
	private int running_number;

	public String getName_not_insert() {
		return name_not_insert;
	}

	public void setName_not_insert(String name_not_insert) {
		this.name_not_insert = name_not_insert;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getRunning_type() {
		return running_type;
	}

	public void setRunning_type(String running_type) {
		this.running_type = running_type;
	}

	public int getRunning_number() {
		return running_number;
	}

	public void setRunning_number(int running_number) {
		this.running_number = running_number;
	}

}
