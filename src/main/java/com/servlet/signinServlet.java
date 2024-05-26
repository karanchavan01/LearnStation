package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

import com.DAO.UserDAO;
import com.DB.DBConnect;

@WebServlet("/signinServlet")
public class signinServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String email = request.getParameter("user_email");
		String password = request.getParameter("user_pass");
		
		UserDAO dao = new UserDAO(DBConnect.getConnection());
		com.entities.User user = dao.getSignin(email, password);
		
		if(user != null) {
			HttpSession session = request.getSession();
			session.setAttribute("user-object", user);
			response.sendRedirect("HomePage.jsp");
		}
		else {
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('Username or Password is Incorrect...!!');");
			out.println("</script>");
			response.sendRedirect("SignIn.jsp");
		}
	}
}
