package application.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UploadController {
	
	@RequestMapping(value = "/upload", method = RequestMethod.POST)
    public void doPost(HttpServletRequest request, HttpServletResponse response) {
		this.init(request, response);
    }
	
	@RequestMapping(value = "/upload", method = RequestMethod.GET)
    public void doGet(HttpServletRequest request, HttpServletResponse response) {
		this.init(request, response);
    }
	
	public void init(HttpServletRequest request, HttpServletResponse response) {
		File filesDir = (File) request.getServletContext().getAttribute("FILES_DIR_REF_DOC_FILE");
		boolean isMultipart = ServletFileUpload.isMultipartContent(request);

		// process only if its multipart content
		if (isMultipart) {
			// Create a factory for disk-based file items
			FileItemFactory factory = new DiskFileItemFactory();

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				// Parse the request
				List<FileItem> multiparts = upload.parseRequest(request);

				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						String name = new File(item.getName()).getName();
						item.write(new File(filesDir + File.separator + name));
					}
				}
			} 
			catch (Exception e) 
			{
			  e.printStackTrace();
			}
		}
	}
}
