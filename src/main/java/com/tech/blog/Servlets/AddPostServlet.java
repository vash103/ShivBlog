package com.tech.blog.Servlets;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.tech.blog.dao.PostDao;
import com.tech.blog.entities.Post;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
import com.tech.blog.helper.Helper;
@MultipartConfig
public class AddPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	int cid=Integer.parseInt(request.getParameter("cid"));
	String pTitle=request.getParameter("pTitle");
	String pContent=request.getParameter("pContent");
	String pcode=request.getParameter("pCode");
	Part pic=request.getPart("pic");
	
	
	// getting user id
	
	HttpSession session=request.getSession();
	User user=(User)session.getAttribute("CurrentUser");
	
	PrintWriter out=response.getWriter();
	out.println("your post title is "+pTitle);
	out.println(pic.getSubmittedFileName());
	
	Post p=new Post(pTitle,pContent,pcode,pic.getSubmittedFileName(),null);
	PostDao dao=new PostDao(ConnectionProvider.getConnection());
	if(dao.savePost(p))
	{
		
		String path=request.getRealPath("/")+"blog_pics"+File.separator+pic.getSubmittedFileName();
		Helper.saveFile(pic.getInputStream(),path);
		out.println("done");
	}
	else
	{
		out.println("error");
	}
	}
}