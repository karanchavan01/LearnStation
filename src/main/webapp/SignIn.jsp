<%@ page import="java.sql.Connection" %>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="com.entities.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sign In Page</title>
<link rel="stylesheet" href="./css/SignUpIn.css">
</head>
<body>
	<div class="container">
        <div class="left">
            <img src="./img/ML_Yellow.svg" alt="">
        </div>
        <div class="right">
            <div id="note">
            <h1><span id="printf">printf</span><span id ="cur1">(</span><span id="signin"> "</span><span id="signup">Sign In</span><span id="signup">"</span>
            <span>)</span><span>;</span></h1>
            </div>
            
            <form action="signinServlet" method="post">
                <div id="Name">
                    <input type="email" placeholder="Email" name="user_email" required>
                </div>

                <div id="Pass">
                    <input type="password" placeholder="Password" name="user_pass"  required>
                </div>
               
                <div class="recover">
                    <a href="#">Forgot Password?</a>
                </div>
                
                <button type="submit">Sign In</button>
            </form>
            
            
            
            <div class="memeber">
                Not a member?<a href="Sign_up_Form.html">Sign Up Here</a>
            </div>
        </div>
    </div>
</body>
</html>