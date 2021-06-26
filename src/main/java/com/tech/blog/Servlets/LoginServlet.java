package com.tech.blog.Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.dao.UserDao;
import com.tech.blog.entities.Message;
import com.tech.blog.entities.User;
import com.tech.blog.helper.ConnectionProvider;
@MultipartConfig
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String useremail=request.getParameter("email");
		String userpassword=request.getParameter("password");
		
		UserDao dao=new UserDao(ConnectionProvider.getConnection());
		
		User u=dao.getUserByEmailAndPassword(useremail, userpassword);
		
		if(u==null)
		{
//			PrintWriter out=response.getWriter();
//			out.println("Invalid details....Try again");
			Message msg=new Message("Invalid Deatils ! try with another","error","alert-danger");
			HttpSession s=request.getSession();
			s.setAttribute("msg", msg);
			response.sendRedirect("login.jsp");
		}
		else
		{
			HttpSession s= request.getSession();
			s.setAttribute("CurrentUser", u);
			response.sendRedirect("profile.jsp");
			
		}
	}

}
