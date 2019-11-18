package application.servlet;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

@WebListener
public class FileLocationContextListener implements ServletContextListener {

    public void contextInitialized(ServletContextEvent servletContextEvent) {
		String rootPath = System.getProperty("catalina.home");
    	ServletContext ctx = servletContextEvent.getServletContext();
    	
    	String relativePath = ctx.getInitParameter("ref_doc.dir");
    	String files_dir = rootPath + File.separator + "e-workflow_temp" + File.separator + relativePath;
    	File file = new File(files_dir);
    	if(!file.exists()) file.mkdirs();
    	ctx.setAttribute("FILES_DIR_REF_DOC_FILE", file);
    	ctx.setAttribute("FILES_DIR_REF_DOC", files_dir);
    	
    	relativePath = ctx.getInitParameter("pic.dir");
    	files_dir = rootPath + File.separator + "e-workflow_temp" + File.separator + relativePath;
    	file = new File(files_dir);
    	if(!file.exists()) file.mkdirs();
    	ctx.setAttribute("FILES_DIR_PIC_FILE", file);
    	ctx.setAttribute("FILES_DIR_PIC", files_dir);
    	
    	relativePath = ctx.getInitParameter("sig.dir");
    	files_dir = rootPath + File.separator + "e-workflow_temp" + File.separator + relativePath;
    	file = new File(files_dir);
    	if(!file.exists()) file.mkdirs();
    	ctx.setAttribute("FILES_DIR_PIC_FILE", file);
    	ctx.setAttribute("FILES_DIR_PIC", files_dir);
    }

	public void contextDestroyed(ServletContextEvent servletContextEvent) {
		//do cleanup if needed
	}
	
}
