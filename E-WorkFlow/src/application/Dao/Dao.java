package application.Dao;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.beanutils.BeanUtils;

import application.model.utility.MapObject;

public class Dao {

	protected Connection connection;

	private String tableName;
	private Object obj;

	public Dao() {
		try {
			Class.forName("org.postgresql.Driver");
			this.connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/EWF", "postgres", "1234");
			this.connection.setAutoCommit(false);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}

	public void setObject(Object obj) {
		this.obj = obj;
	}

	public void setTableName(String tableName) {
		this.tableName = tableName;
	}

	public ResultSet executeQuery(String sql) {
		try {
			Statement statement = this.connection.createStatement();
			ResultSet resultSet = statement.executeQuery(sql);

			return resultSet;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return null;
	}

	public int execute(String sql) {
		try {
			Statement statement = this.connection.createStatement();
			ResultSet rs = statement.executeQuery(sql + " RETURNING ID");
			rs.next();
			int id = rs.getInt(1);

			return id;
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		return 0;
	}

	public void commit() {
		try {
			this.connection.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public void rollback() {
		try {
			this.connection.rollback();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	/*
	 * private String getTableName() { String className =
	 * this.obj.getClass().getName(); className = className.replace(".", ",");
	 * String[] arrOfStr = className.split(","); String table_name =
	 * arrOfStr[arrOfStr.length-1].toLowerCase();
	 * 
	 * return table_name; }
	 */

	public List<Object> getByAll() {
		String sql = "select * from " + this.tableName + " order by id";
		ResultSet rs = this.executeQuery(sql);
		MapObject<Object> obj = new MapObject<Object>();

		return obj.getData(this.obj.getClass(), rs);
	}

	public Object getById(int id) {
		String sql = "select * from " + this.tableName + " where id = " + id;
		ResultSet rs = this.executeQuery(sql);
		MapObject<Object> obj = new MapObject<Object>();

		return obj.getData(this.obj.getClass(), rs).get(0);
	}

	public List<Object> getByLikeField(String field, String text) {
		String sql = "select * from " + this.tableName + " where " + field + " like (%" + text + "%)" + " order by id";
		ResultSet rs = this.executeQuery(sql);
		MapObject<Object> obj = new MapObject<Object>();

		return obj.getData(this.obj.getClass(), rs);
	}

	public List<Object> getByWhere(String codition) {
		String sql = "select * from " + this.tableName + " where " + codition;
		ResultSet rs = this.executeQuery(sql);
		MapObject<Object> obj = new MapObject<Object>();

		return obj.getData(this.obj.getClass(), rs);
	}

	public int add(Object obj) {
		String str_field = "";
		String str_value = "";

		List<Field> fields = Arrays.asList(obj.getClass().getDeclaredFields());
		for (Field field : fields) {
			try {
				String name = field.getName();
				String value = BeanUtils.getProperty(obj, name);

				if ("id".equals(name.toLowerCase()))
					continue;

				if ("java.lang.String".equals(field.getType().getName())) {
					str_field += "".equals(str_field) ? name : ", " + name;
					str_value += "".equals(str_value) ? value : ", '" + value + "'";
				} else {
					str_field += "".equals(str_field) ? name : ", " + name;
					str_value += "".equals(str_value) ? value : ", " + value;
				}
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			} catch (NoSuchMethodException e) {
				e.printStackTrace();
			}
		}

		String sql = "insert into " + this.tableName + " (" + str_field + ") values (" + str_value + ")";
		int id = this.execute(sql);
		return id;
	}

	public int edit(Object obj) {
		String objId = "0";
		String str = "";

		List<Field> fields = Arrays.asList(obj.getClass().getDeclaredFields());
		for (Field field : fields) {
			try {
				String name = field.getName();
				String value = BeanUtils.getProperty(obj, name);

				if ("id".equals(name.toLowerCase())) {
					objId = value;
					continue;
				}

				String buffer = "";
				if ("java.lang.String".equals(field.getType().getName())) {
					buffer = name + "=" + "'" + value + "'";
				} else {
					buffer = name + "=" + value;
				}
				str += "".equals(str) ? buffer : ", " + buffer;
			} catch (IllegalAccessException e) {
				e.printStackTrace();
			} catch (InvocationTargetException e) {
				e.printStackTrace();
			} catch (NoSuchMethodException e) {
				e.printStackTrace();
			}
		}

		String sql = "update " + this.tableName + " set " + str + " where id =" + objId;
		int id = this.execute(sql);
		return id;
	}

}
