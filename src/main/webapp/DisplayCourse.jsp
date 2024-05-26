<%@ page import="com.entities.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.entities.User" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	User user = (User)session.getAttribute("user-object");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

    <link rel="stylesheet" href="./css/Courses.css">
    <link rel="stylesheet" href="./css/HomePage.css">
</head>
<body>
	<div class="header">
        <header class="header-content">
            <a href="#logo" class="logo">
                <h3>Learn<span class="station">Station</span></h3>
            </a>
            <nav class="nav">
                <a href="#home" class="nav-link">Home</a>
                <a href="/About_Us/AboutUs.html" class="nav-link">About us</a>
                <a href="#course" class="nav-link">Courses</a>
                <a href="#contactus" class="nav-link">Contact Us</a>
            </nav>
            <% 
                
                if (user != null) { 
            %>
                <a href="#" class="sign-in-button"><%= user.getName() %></a>
                <a href="signoutServlet" class="sign-in-button">Sign Out</a>
            <% } else { %>
                <a href="SignIn.jsp" class="sign-in-button">Sign in</a>
                <a href="SignUp.jsp" class="sign-in-button">Sign Up</a>
            <% } %>
            <button type="button" class="menu-button">
                <img src="./img/Courses/menu_FILL0_wght400_GRAD0_opsz24.svg" alt="hamberg" class="hamburger">
            </button>
        </header>
    </div>

    <div class="info-container">
        <div class="answer">
            <h1 class="ans">Available Courses</h1>
        </div>
        
        <table border="1">
        <tr>
            <th>Course ID</th>
            <th>Instructor</th>
            <th>Date</th>
            <th>Course Title</th>
            <th>Course Name</th>
            <th>Course Description</th>
        </tr>
        
        <% 
		String query = "SELECT * FROM courses";
        
        // Establish database connection and execute query
        try (Connection conn = DBConnect.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            
            // Iterate over the result set and display data in table rows
            while (rs.next()) {
        %>
                <tr>
                    <td><%= rs.getInt("course_id") %></td>
                    <td><%= rs.getString("instructor") %></td>
                    <td><%= rs.getDate("date") %></td>
                    <td><%= rs.getString("course_title") %></td>
                    <td><%= rs.getString("course_name") %></td>
                    <td><%= rs.getString("course_desc") %></td>
                </tr>
        <% 
            }
            rs.close();
            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        %>
    </table>
    </div>
</body>
</html>