<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Information Form</title>
</head>
<body>
    <h1>Student Information Form</h1>
    <form action="StudentServlet" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name" required><br><br>
        
        <label for="age">Age:</label>
        <input type="number" id="age" name="age" required><br><br>
        
        <label for="grade">Grade:</label>
        <input type="text" id="grade" name="grade" required><br><br>
        
        <input type="submit" value="Submit">
    </form>
</body>
</html>
