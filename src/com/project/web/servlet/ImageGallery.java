package com.project.web.servlet;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try
		{
			request.setAttribute("files",getImagesFromContentFolder(request,response));
			request.getRequestDispatcher("photoGallery.jsp").forward(request, response);
		}
		catch (Throwable e) {
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
	
	protected List<String> getImagesFromContentFolder(HttpServletRequest request, HttpServletResponse response) throws Throwable
	{
		List<String> fileList = null;
		File[] files=null;
	try
	{
		System.out.println(System.getProperty("user.home") +"..."
	+getServletContext().getRealPath("/"));
		files = new File("D:\\SpringWorkspace\\Buildite\\WebContent\\content\\").listFiles();
		fileList = new ArrayList<String>();
		for(File s:files)
		{
			System.out.println(s.getName());
		
			fileList.add("content/"+s.getName());
			System.out.println(	ImageGallery.class.getResourceAsStream(s.getAbsolutePath()));
			System.out.println(s.getPath().toString());
			System.out.println(s.getCanonicalPath());
			}
	}
	catch(Throwable th)
	{
		System.out.println(th.getMessage());
		throw th;
	}
	System.out.println(fileList.size());
		return fileList;
	}

}
