package com.tech.blog.Servlets;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.tech.blog.entities.User;
import com.tech.blog.helper.Helper;


public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	User user = new User();
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String path=request.getRealPath("/")+"pic"+File.separator+user.getProfile();
		
		
		    Part part=request.getPart("pic");
			if(Helper.saveFile(part.getInputStream(), path))
			{
				
			}
	}

}
