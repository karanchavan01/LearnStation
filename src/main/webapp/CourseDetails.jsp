<%@ page import="com.entities.Course" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Base64" %>
<%@ page import="com.entities.User" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
    User user = (User)session.getAttribute("user-object");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="./css/Playlist.css">
<link rel="stylesheet" href="./css/HomePage.css">
</head>
<body>
	<div class="header">

        <header class="header-content">
            <a href="#logo" class="logo">
                <!-- <img src="Logo4.svg" alt="logoImage" class="logo-icon"> -->
                <h3>Learn<span class="station">Station</span></h3>
            </a>
            <nav class="nav">
                <a href="#home" class="nav-link">Home</a>
                <a href="/About_Us/AboutUs.html" class="nav-link">About us</a>
                <a href="#course" class="nav-link">Courses</a>
                <a href="#contactus" class="nav-link">Contact Us</a>
            </nav>
            <% if (user != null) { %>
            	<a href="#" class="sign-in-button"><%= user.getName() %></a>
            	<a href="signoutServlet" class="sign-in-button">Sign Out</a>
        	<% } else { %>
            	<a href="SignIn.jsp" class="sign-in-button">Sign in</a>
            	<a href="SignUp.jsp" class="sign-in-button">Sign Up</a>
        	<% } %>
        	
            <button type="button" class="menu-button">
                <img src="menu_FILL0_wght400_GRAD0_opsz24.svg" alt="hamberg" class="hameberg">
            </button>


        </header>
    </div>
    
    <div class="content">
        <section class="main-section">

            <div class="content-left">
                <p class="section-label">Welcome to the LEARNSTATION Premium Courses</p>
                <h1 class="section-title section-title1">We delivered the Quality Courses for FREE</h1>
            </div>

            <div class="content-right">
                <div class="img-container">
                    <img src="./img/Courses/Html.svg" alt="" class="section-image">
                </div>
            </div>
        </section>
    </div>

    <div class="info-container" id="info-margin" style="background-color:gray;">
        <div class="answer">
            <h1 class="ans">Course Modules</h1>
        </div>
    
    <select id="module-selector" onchange="loadModule()">
    <option value="">Select Module</option>
    <option value="videos">Videos</option>
    <option value="quiz">Quiz</option>
    <option value="notes">Notes</option>
	</select>
	<div id="module-content"></div><br><br>
	</div>

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
                <!-- column-1 -->
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

                    <!-- column2 -->
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


                    <!-- column3 -->
                    <div class="footer-grid-column">
                        <div class="footer-grid-heading">
                            Leagal
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


                    <!-- column4 -->
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
  //show and hide dropdown list item on button click
    function show_hide() {
       var click = document.getElementById("list-items");
       if (click.style.display === "none") {
          click.style.display = "block";
       } else {
          click.style.display = "none";
       }
    }
  
    function loadModule() {
        var module = document.getElementById("module-selector").value;
        var contentDiv = document.getElementById("module-content");
        
        if (module === "videos") {
            contentDiv.innerHTML = `
                <h2>Videos Module</h2>
                <iframe width="300" height="250" src="https://www.youtube.com/embed/rklidcZ-aLU?si=Atn14n-eIPpN8I5c" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="margin-right:20px;"></iframe>
                <iframe width="300" height="250" src="https://www.youtube.com/embed/OpWjt_wbV4E?si=-BVxMHY9-9kf_L6N" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="margin-right:20px;"></iframe>
                <iframe width="300" height="250" src="https://www.youtube.com/embed/cpoXLj24BDY?si=fI9HcbE_5tbrQxlm" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                <iframe width="300" height="250" src="https://www.youtube.com/embed/4XTsAAHW_Tc?si=7qPwxvsOuWzrr8A8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="margin-right:20px;"></iframe>
                <iframe width="300" height="250" src="https://www.youtube.com/embed/1SnPKhCdlsU?si=PmbXn_sN2oZGXWf8" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen style="margin-right:20px;"></iframe>
                <iframe width="300" height="250" src="https://www.youtube.com/embed/hlGoQC332VM?si=M1Y9WXpzasXDr4Ia" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
            `;
        } else if (module === "quiz") {
            contentDiv.innerHTML = `
                <h2>Quiz Module</h2>
                <a href="quizLink">Take the HTML Quiz</a><br><br>
                <a href="quizLink">Take the CSS Quiz</a><br><br>
                <a href="quizLink">Take the JavaScript Quiz</a><br><br>
                <a href="JavaQuiz.jsp">Take the Java Quiz</a><br><br><br>
            `;
        } else if (module === "notes") {
            contentDiv.innerHTML = `
                <h2>Notes Module</h2>
                <a href="https://d502jbuhuh9wk.cloudfront.net/digital_products/65127839e4b0c7d1508fbaf9/655062b79615bd3ab346f162/asset/1700197275438/file.pdf">Download HTML Notes</a><br><br>
                <a href="https://d502jbuhuh9wk.cloudfront.net/digital_products/65127839e4b0c7d1508fbaf9/6550654f80b6a16838882897/asset/1700197475612/file.pdf">Download CSS Notes</a><br><br>
                <a href="https://d502jbuhuh9wk.cloudfront.net/digital_products/65127839e4b0c7d1508fbaf9/655065b980b6a16838882898/asset/1700197518401/file.pdf">Download JavaScript Notes</a><br><br>
                <a href="quizLink">Download Java Notes</a><br><br>
            `;
        } else {
            contentDiv.innerHTML = ""; // Clear the content if no module is selected
        }
    }

    </script>
</body>
</html>