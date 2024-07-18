<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Visitor Counter</title>
</head>
<body>
    <h1>Visitor Counter</h1>
    <p>This page has been visited <%= request.getAttribute("visitorCount") %> times.</p>
</body>
</html>