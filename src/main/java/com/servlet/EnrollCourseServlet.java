package com.servlet;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Date;

import com.entities.Enrollment;
import com.DB.DBConnect; // Assuming you have a DBConnect class to establish database connection

@WebServlet("/EnrollCourseServlet")
public class EnrollCourseServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int studentId = 0;
        int courseId = 0;

        // Assuming you have retrieved the username from the session
        // You may need to implement the logic to retrieve it based on your application
        // For demonstration, I'm assuming you have stored it as an attribute in the session
        String username = (String) request.getSession().getAttribute("name");

        // Retrieve student ID based on the username from the user table
        studentId = getStudentIdByUsername(username);

        if (studentId == 0) {
            // Handle case where studentId is not found in the user table
            // You might want to display an error message or redirect to an error page
            response.getWriter().println("<script>alert('Error: Student ID not found!');</script>");
            return;
        }

        // Retrieve the courseId from the request parameter
        courseId = Integer.parseInt(request.getParameter("courseId"));

        // Create a new Enrollment object
        Enrollment enrollment = new Enrollment();
        enrollment.setStudentId(studentId);
        enrollment.setCourseId(courseId);
        enrollment.setEnrollmentDate(new Date());
        
        if (enrollment.isValid()) {
            // Construct a string containing the enrollment details
            String enrollmentDetails = "Enrollment ID: " + enrollment.getEnrollmentId() + "\n"
                    + "Student ID: " + enrollment.getStudentId() + "\n"
                    + "Course ID: " + enrollment.getCourseId() + "\n"
                    + "Enrollment Date: " + enrollment.getEnrollmentDate();

            // Output the enrollment details in an alert message
            String alertMessage = "alert('" + enrollmentDetails + "');";
            response.getWriter().println("<script>" + alertMessage + "</script>");

            // You can redirect to a confirmation page or display a success message here
            response.getWriter().println("<script>alert('Enrollment successful!');</script>");
        } else {
            // Enrollment is not valid, handle error
            // You can redirect to an error page or display an error message here
            response.getWriter().println("<script>alert('Invalid enrollment data!');</script>");
        }
    }

    // Method to retrieve student ID based on username from the user table
    private int getStudentIdByUsername(String username) {
        int studentId = 0;
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            conn = DBConnect.getConnection();
            String query = "select id from user where name = ?";
            stmt = conn.prepareStatement(query);
            stmt.setString(1, username);
            rs = stmt.executeQuery();
            if (rs.next()) {
                studentId = rs.getInt("id");
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rs != null) {
                    rs.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
                if (conn != null) {
                    conn.close();
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return studentId;
    }
}
