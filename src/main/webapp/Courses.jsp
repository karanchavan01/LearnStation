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
    <title>Courses</title>
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

    <div class="content">
        <section class="main-section">
            <div class="content-left">
                <p class="section-label">Welcome to Course Section</p>
                <h1 class="section-title">The Quality Courses for Quality Audience</h1>
                <p class="section-description">Welcome to LearnStation, your dedicated platform for personalized and interactive eLearning experiences. We are passionate about education and committed to making learning accessible, engaging, and effective for learners of all ages and backgrounds.</p>
            </div>

            <div class="content-right">
                <div class="img-container">
                    <img src="./img/ML_Yellow.svg" alt="" class="section-image">
                </div>
            </div>
        </section>
    </div>

    <div class="info-container">
        <div class="answer">
            <h1 class="ans">Our Courses</h1>
        </div>
    </div>
    
    <div class="Cards">
    <% 
        // Define SQL query
        String query = "SELECT * FROM courses";
        
        // Establish database connection and execute query
        try (Connection conn = DBConnect.getConnection();
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery(query)) {
            while (rs.next()) {
                // Retrieve other data from the result set
                int courseId = rs.getInt("course_id");
                String instructor = rs.getString("instructor");
                Date date = rs.getDate("date");
                String courseTitle = rs.getString("course_title");
                
                // Retrieve the BLOB data for the image
                Blob blob = rs.getBlob("course_image");
                
                // Check if the BLOB data is not null
                if (blob != null) {
                    // Convert the BLOB data to a byte array
                    byte[] imageData = blob.getBytes(1, (int) blob.length());
                    
                    // Define file path to save the image
                    String imagePath = "C:/Users/karan/eclipse-workspace/Elearning/src/main/webapp/img/Courses/thumb-" + courseId + ".png";
                    
                    try (FileOutputStream outputStream = new FileOutputStream(imagePath)) {
                        outputStream.write(imageData);
                        outputStream.flush();
                    } catch (IOException e) {
                        // Handle IOException
                        e.printStackTrace();
                    }
                }
    %>
                <div class="card-frame">
                    <div class="profile">
                        <div class="profile-photo">
                            <!-- Placeholder image -->
                            <img src="./img/Courses/pic-9.jpg" alt="" class="photo">
                        </div>
                        <div class="info">
                            <h3><%= instructor %></h3>
                            <span><%= date %></span>
                        </div>
                    </div>
                    <div class="thumb">
                        <a href="#" id="anchor">
                            <!-- Placeholder image -->
                            <img src="./img/Courses/thumb-<%= courseId %>.png" alt="course image" class="html-img">
                        </a>
                        <span>10 videos</span>
                    </div>
                    <h3 class="html-desc"><%= courseTitle %></h3>
                    <div class="view-d">
                    <% 
            PrintWriter myout = response.getWriter();
            if (user != null) { %>
            	<a href="CourseDetails.jsp" class="view-details">View Details</a>
                        <form action="EnrollCourseServlet" method="post" class="enroll-form">
                            <input type="hidden" name="courseId" value="<%= courseId %>">
                            <button type="submit" class="view-details" id="enrollButton<%= courseId %>">Enroll FREE</button>
                        </form>
        	<%
            } else { %>
            	<a href="SignIn.jsp" class="view-details">Login First</a>
        	<% } %>
                        <!-- Adjust links accordingly -->

                    </div>
                </div>
    <% 
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    %>
	</div>

	<%      
    	if ("Varad Choudhari".equals(user.getName()) || "Karan Chavan".equals(user.getName())) { 
	%>
    	<a href="AddCourse.jsp" class="view-details">Add Courses</a>
	<% } %>


    <div class="footer-container">
        <footer class="footer">
            <div class="footer-top">
                <div class="comp-logo">
                    <a href="#" class="logo-link">
                        Learn<span class="station">Station</span>
                    </a>
                    <p class="filler-text">Seamless Learning For Brighter Futures.</p>
                </div>
            </div>
            <div class="footer-grid">
                <div class="footer-grid-column">
                    <div class="footer-grid-heading">
                        Products
                    </div>
                    <div class="footer-link-list">
                        <ul class="footer-link-list">
                            <li>
                                <a href="#" class="footer-link">Overview</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Solutions</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Pricing</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Customers</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="footer-grid-column">
                    <div class="footer-grid-heading">
                        Company
                    </div>
                    <div class="footer-link-list">
                        <ul class="footer-link-list">
                            <li>
                                <a href="#" class="footer-link">About</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Job</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Press</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Blog</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="footer-grid-column">
                    <div class="footer-grid-heading">
                        Legal
                    </div>
                    <div class="footer-link-list">
                        <ul class="footer-link-list">
                            <li>
                                <a href="#" class="footer-link">Terms of Service</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Privacy Policy</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Cookie Settings</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="footer-grid-column">
                    <div class="footer-grid-heading">
                        Support
                    </div>
                    <div class="footer-link-list">
                        <ul class="footer-link-list">
                            <li>
                                <a href="#" class="footer-link">Contact</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">Documentation</a>
                            </li>
                            <li>
                                <a href="#" class="footer-link">FAQ</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </footer>
        <div class="footer-copyright">
            2023 - Present LearnStation. All rights reserved
        </div>
    </div>
    
    <script>
        // Function to handle enrollment success
        function handleEnrollmentSuccess(courseId) {
            // Change the button text to "View Details"
            var enrollButton = document.getElementById("enrollButton" + courseId);
            if (enrollButton) {
                enrollButton.textContent = "View Details";
            }
            // Show alert message
            alert("Enrollment successful!");
        }
    </script>
</body>
</html>
