<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.techm.Student" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Details</title>
</head>
<body>
    <h1>Student Details</h1>
    <table border="1">
        <tr>
            <th>Name</th>
            <th>Age</th>
            <th>Grade</th>
        </tr>
        <%
            List<Student> studentList = (List<Student>) request.getAttribute("studentList");
            if (studentList != null) {
                for (Student student : studentList) {
                    out.println("<tr>");
                    out.println("<td>" + student.getName() + "</td>");
                    out.println("<td>" + student.getAge() + "</td>");
                    out.println("<td>" + student.getGrade() + "</td>");
                    out.println("</tr>");
                }
            }
        %>
    </table>
    <br>
    <a href="studentForm.jsp">Add Another Student</a>
</body>
</html>
