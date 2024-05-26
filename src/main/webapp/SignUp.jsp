<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
<link rel="stylesheet" href="./css/SignUpIn.css">
</head>
<style>
	.error-message{
		color: red;
	}
</style>
<body>
	 <div class="container">
        <div class="left">
            <img src="./img/Coding_Black.svg" alt="">
            <img src="./img/Smile_And_Eyes.svg" alt="" id="eye1">
            <img src="./img/Smile_And_Eyes.svg" alt="" id="eye2">

            <img src="./img/Nose.svg" alt="" id="Nose">

            <img src="./img/Smile_And_Eyes.svg" alt="" id="Smile">
        </div>
        <div class="right">
            <div id="note">
            <h1><span id="printf">printf</span><span id ="cur1">(</span><span id="signup"> "</span><span id="signup">Sign Up</span><span id="signup">"</span>
            <span>)</span><span>;</span></h1>
            </div>
            
            <form action="signupServlet" method="post">
            	<div class="error-message" id="errorMessage"></div>
                <div id="Name">
                    <input type="text" placeholder="Name" name="user_name" id="user_name" required>
                </div>
                <div id="mail">
                    <input type="email" placeholder="E-Mail" name="user_email" id="user_email" required>
                </div>

                <div id="Pass">
                    <input type="password" placeholder="Password" name="user_pass" id="user_pass" required>
                </div>
                
                <div id="Confirm">
                    <input type="password" placeholder="Confirm password" name="user_confirm" id="user_confirm" required>
                </div>
                <div class="recover">
                    <a href="#">Forgot Password?</a>
                </div>
                
                 <div class="terms">
                	<input type="checkbox" id="checkbox">
                	<label for="checkbox">I agree to these <a href="#">Terms & Conditions</a></label>
            	</div>
            	<button type="submit" onclick="validateForm()">Sign Up</button>
            
            </form>

           
            <div class="memeber">
                Already a member?<a href="Login.html">Login Here</a>
            </div>
        </div>
    </div>
</body>
</html>