<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Current Date and Time</title>
</head>
<body>
    <h1>Current Date and Time</h1>
    <%
        Date currentDate = new Date();
    %>
    <p>Date and Time: <%= currentDate.toString() %></p>
</body>
</html>
