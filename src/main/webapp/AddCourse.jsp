<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Courses</title>
<link rel="stylesheet" href="./css/SignUpIn.css">
</head>
<body>
	<div class="container">
        <div class="left">
            <img src="./img/ML_Yellow.svg" alt="">
        </div>
        <div class="right">
            
            <form action="addcourseServlet" method="post">
                <div id="Name">
                    <input type="text" placeholder="Instructor Name" name="course_instructor" required>
                </div>
                <div id="Name">
                    <input type="date" placeholder="Enrolled Date" name="course_date" required>
                </div>
                <div id="Name">
                    <input type="text" placeholder="Course Title" name="course_title" required>
                </div>
                <div id="Name">
                    <input type="text" placeholder="Course Name" name="course_name" required>
                </div>
				
                <div id="Name">
                    <input type="file" placeholder="Choose an image" name="course_image"  required>
                </div>
                
                <button type="submit">Add Course</button>
            </form>
           
        </div>
    </div>
</body>
</html>