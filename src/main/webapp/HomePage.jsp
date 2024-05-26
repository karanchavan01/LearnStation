<%@ page import="com.entities.User" %>
<%@ page import="java.io.PrintWriter" %>
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
                <a href="AboutUs.html" class="nav-link">About us</a>
                <a href="#" class="nav-link">Courses</a>
                <a href="ContactUs.html" class="nav-link">Contact Us</a>
            </nav>
            
            <% 
            PrintWriter myout = response.getWriter();
            if (user != null) { %>
            	<a href="#" class="sign-in-button"><%= user.getName() %></a>
            	<a href="signoutServlet" class="sign-in-button">Sign Out</a>
        	<%
        	myout.println("<script>");
            myout.println("alert('Signed In Successfully...!!');");
            myout.println("</script>");
            } else { %>
            	<a href="SignIn.jsp" class="sign-in-button">Sign in</a>
            	<a href="SignUp.jsp" class="sign-in-button">Sign Up</a>
        	<% } %>
            	
            
            <button type="button" class="menu-button">
                <img src="./img/HomePage/Homenu_FILL0_wght400_GRAD0_opsz24.svg" alt="hamberg" class="hameberg">
            </button>


        </header>
    </div>

    <div class="content">
        <section class="main-section">

            <div class="content-left">
                <p class="section-label">Very proud to introduce</p>
                <h1 class="section-title">Seamless Learning for Brighter Futures</h1>
                <p class="section-discription">Welcome to LearnStation, your dedicated platform for personalized and interactive eLearning experiences. We are passionate about education and committed to making learning accessible, engaging, and effective for learners of all ages and backgrounds.</p>
                <div class="button-group">
                    <a href="#start" class="start-button">Start Now</a>
                    <a href="Courses.jsp" class="view-course-button">View Course</a>
                </div>
            </div>

            <div class="content-right">
                <div class="img-container">
                    <img src="./img/HomePage/Img_Homepage.png" alt="" class="section-image">
                </div>
            </div>
        </section>
    </div>

    <div class="info-container">
        <h4 class="question">Why Learn Station?</h4>
        <div class="answer">
            <h1 class="answer1">Making learning easier and
                more convenient for you.</h1>
        </div>
    </div>

    <div class="cards">
            <div class="First_Cards">
                <div id="Data_Structure">
                    <img src="./img/HomePage/logo-ds.svg" alt="#" id="DS">
                    <h3>Data Structure</h3>
                    <p>Data structures are the problem-solving pillars of coding. Learn all the foundatinal
                        knowledge
                        about all of the popular data structure that you need. to be well-versed in interviews.</p>
                </div>

                <div id="Placement_Preparation">
                    <img src="./img/HomePage/earnings-svgrepo-com.svg" alt="#" id="PP">
                    <h3>Placement Preparation</h3>
                    <p>Ace the placement interviews by being knowledgeable in all well - Known data structures, popular problem-solving methods, and core computer sciences.</p>
                </div>


                <div id="Hand_Picked_Questions">
                    <img src="./img/HomePage/question-answer-help-svgrepo-com.svg" alt="#" id="HPQ">
                    <h3>Hand Picked Questions</h3>
                    <p>Get access to hand-picked coding interview questions across categories and difficulty levels that will prepare you for every interview you would encounter.</p>
                </div>
            </div>
            <br>
            <div class="Second_Cards">
                <div id="Curated_Content">
                    <img src="./img/HomePage/money-check-pen-svgrepo-com.svg" alt="#" id="DS">
                    <h3>Curated Content</h3>
                    <p>Learn in-depth conceptual overviews, how to approch an algorithm, how to implement it & how to optimize it.</p>
                </div>

                <div id="Learn_From_The_Best">
                    <img src="./img/HomePage/certificate-svgrepo-com.svg" alt="#" id="PP">
                    <h3>Learn From The Best</h3>
                    <p>Get access and get monitored you'r resume by the best coders. Which they works in the <b>'FAANG'</b> companies.</p>
                </div>


                <div id="Learn_Something_New">
                    <img src="./img/HomePage/reading-svgrepo-com.svg" alt="#" id="HPQ">
                    <h3>Learn Something New</h3>
                    <p>Learn new concepts daily, increase your productivity & reach your full potential</p>
                </div>
            </div>
    </div>

    <div class="animate">
            <div class="Info_Page4">
                <h4>Placements</h4>
                <h2>Get Offers form <br/> Top Companies</h2>
                <p>Our finest get offers from top-notch companies.</p>
            </div>

            <div class="Rotate">
                <div class="orbit1">
                    <img src="./img/HomePage/flipkart-icon.svg" alt="flipkart-icon" id="flipkart">
                    <img src="./img/HomePage/ola-icon.svg" alt="ola-icon" id="ola">
                    <img src="./img/HomePage/linkedin-app-icon.svg" alt="linkedin-app-icon" id="linkedin">
                    <img src="./img/HomePage/adobe-icon.svg" alt="adobe-icon" id="adobe">
                </div>
                <div class="orbit2">
                    <img src="./img/HomePage/microsoft-icon.svg" alt="microsoft-icon" id="microsoft">
                    <img src="./img/HomePage/apple-icon.svg" alt="apple-icon" id="apple">
                    <img src="./img/HomePage/Netflix_logo.png" alt="Netflix_logo" id="Netflix">
                    <img src="./img/HomePage/google-color-icon.svg" alt="google-color-icon" id="google">
                    <img src="./img/HomePage/meta-icon.svg" alt="meta" id="meta">
                    <img src="./img/HomePage/amazon-a-logo-icon.svg" alt="amazon-a-logo-icon" id="amazon">
                </div>
            </div>
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
</body>
</html>