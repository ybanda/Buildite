package com.project.web.servlet;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.web.Properties.ConstanstUtil;

/**
 * Servlet implementation class ImageGallery
 */
@WebServlet("/ImageGallery")
public class ImageGallery extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ImageGallery() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{

		Properties properties = new Properties();

		try(InputStream in = ImageGallery.class.getClassLoader().getResourceAsStream(ConstanstUtil.PROPERTY_FILE_PATH)){
			properties.load(in);
			request.setAttribute("files",getImagesFromContentFolder(request,response,properties));
			request.getRequestDispatcher("photoGallery.jsp").forward(request, response);
		}

		catch (Throwable e){
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	protected List<String> getImagesFromContentFolder(HttpServletRequest request, HttpServletResponse response ,Properties properties) throws Throwable{
		List<String> fileList = null;
		File[] files=null;
		
		try{
			files = new File(properties.getProperty(ConstanstUtil.PROJECT_PATH).trim().toString()).listFiles();
			fileList = new ArrayList<String>();
			for(File s:files)
				fileList.add(properties.getProperty(ConstanstUtil.CONTENT_FOLDER_NAME).trim().toString()+s.getName());

		}
		catch(Throwable th){
			System.out.println(th.getMessage());
			throw th;
		}
		return fileList;
	}

}
