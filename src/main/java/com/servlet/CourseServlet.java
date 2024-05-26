package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

import com.DAO.CourseDAO;
import com.entities.Course;

public class CourseServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		CourseDAO courseDao = new CourseDAO();
        List<Course> courses = courseDao.getAllCourses();
        
        // You can set courses as an attribute and forward the request to a JSP for rendering
        request.setAttribute("courses", courses);
        request.getRequestDispatcher("courses.jsp").forward(request, response);
	}

}
