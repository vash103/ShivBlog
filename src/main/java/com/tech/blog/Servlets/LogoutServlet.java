package com.tech.blog.Servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.tech.blog.entities.Message;
@MultipartConfig
public class LogoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession s=request.getSession();
		s.removeAttribute("CurrentUser");
		
		Message m=new Message("Logout Successfully", "success", "alert-success");
		
		response.sendRedirect("login.jsp");
		
		
	}

}
