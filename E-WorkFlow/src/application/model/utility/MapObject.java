package application.model.utility;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import application.service.utility.MyTimestamp;

public class MapObject <T>{

	@SuppressWarnings({ "rawtypes", "unchecked" })
	public List<T> getData(Class c, ResultSet rs) {
		try {
		    List<Field> fields = Arrays.asList(c.getDeclaredFields());
		    for(Field field: fields) {
		        field.setAccessible(true);
		    }

		    List<T> list = new ArrayList<>(); 
		    while(rs.next()) {

		    	T dto = null;
				try {
					dto = (T) c.getConstructor().newInstance();
				} catch (InstantiationException | IllegalAccessException | IllegalArgumentException
						| InvocationTargetException | NoSuchMethodException | SecurityException e1) {
					e1.printStackTrace();
				}

		        for(Field field: fields) {
		        	String field_name = field.getName();
		            String field_type = field.getType().getName();
//			        System.out.println(field_type + " : " +field_name);
		            try{
		            	if("java.lang.String".equals(field_type)) {
			                String value = rs.getString(field_name);
			                field.set(dto, field.getType().getConstructor(String.class).newInstance(value));
		            	}else{
		            		Integer value = rs.getInt(field_name);
		            		Class<?> type = MAP.containsKey(value.getClass()) ? MAP.get(value.getClass()) : value.getClass();
			                field.set(dto, field.getType().getConstructor(type).newInstance(value));
		            	}
		            } catch (Exception e) {
		                e.printStackTrace();
		            }
		        }
		        list.add(dto);
		    }
		    return list;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public T getDataFormRequest(Class c, HttpServletRequest rs) {
		try {
			
			rs.setCharacterEncoding("UTF-8");
			
		    List<Field> fields = Arrays.asList(c.getDeclaredFields());
		    for(Field field: fields) {
		        field.setAccessible(true);
		    }

	    	T dto = null;
			try {
				dto = (T) c.getConstructor().newInstance();
			} catch (InstantiationException | IllegalAccessException | IllegalArgumentException
					| InvocationTargetException | NoSuchMethodException | SecurityException e1) {
				e1.printStackTrace();
			}

	        for(Field field: fields) {
	            String field_name = field.getName();
	            String field_type = field.getType().getName();
//		        System.out.println(field_type + " : " +field_name);
	            try{
	            	String str = rs.getParameter(field_name);
	            	
	            	if("java.lang.String".equals(field_type)) {
	            		
	            		if(str == null) continue;
	            		
		                String value = str;
		                field.set(dto, field.getType().getConstructor(String.class).newInstance(value));
	            	}
	            	
	            	if("java.lang.Integer".equals(field_type)) {
	            		
	            		if(str == null) continue;
	            		
	            		Integer value = Integer.valueOf(str);
	            		Class<?> type = MAP.containsKey(value.getClass()) ? MAP.get(value.getClass()) : value.getClass();
		                field.set(dto, field.getType().getConstructor(type).newInstance(value));
	            	}
	            	
	            	if("int".equals(field_type)) {
	            		
	            		if(str == null) continue;
	            		
	            		int value = Integer.valueOf(str);
		                field.set(dto, value);
	            	}
	            	
	            	if("java.lang.Boolean".equals(field_type)) {
	            		
	            		if(str == null) continue;
	            		
	            		Boolean value = Boolean.valueOf(str);
	            		Class<?> type = MAP.containsKey(value.getClass()) ? MAP.get(value.getClass()) : value.getClass();
		                field.set(dto, field.getType().getConstructor(type).newInstance(value));
	            	}
	            	
	            	if("boolean".equals(field_type)) {
	            			
	            		if(str == null) continue;
	            		
	            		boolean value = Boolean.valueOf(str);
		                field.set(dto, value);
	            	}
	            	
	            	if("application.service.utility.MyTimestamp".equals(field_type)) {
	            		String date = "";
            			String time = "";
            			String user = "";
            			
	            		if("timeadd".equals(field_name)){
	            			date = rs.getParameter("timeadd_date");
	            			time = rs.getParameter("timeadd_time");
	            			user = rs.getParameter("timeadd_user");
	            		}
	            		
	            		if("timeupd".equals(field_name)){
	            			date = rs.getParameter("timeupd_date");
	            			time = rs.getParameter("timeupd_time");
	            			user = rs.getParameter("timeupd_user");
	            		}
	            		
	            		MyTimestamp mt = new MyTimestamp(date, time, user);
            			field.set(dto, mt);
	            	}
	            	
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }
		    return dto;
		}catch (Exception e) {
			 e.printStackTrace();
		}
		return null;
	}
	
	@SuppressWarnings("serial")
	private static final Map<Class<?>, Class<?>> MAP = new HashMap<Class<?>, Class<?>>() {{
	    put(Integer.class, int.class);
	    put(Long.class, long.class);
	    put(Boolean.class, boolean.class);
	    put(Double.class, double.class);
	}};
	
}
