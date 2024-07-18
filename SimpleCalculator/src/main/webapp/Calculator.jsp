<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Simple Calculator</title>
</head>
<body>
    <h1>Simple Calculator</h1>
    <form method="post" action="Calculator.jsp">
        <label for="number1">Number 1:</label>
        <input type="text" id="number1" name="number1" value="${param.number1}"><br><br>
        
        <label for="number2">Number 2:</label>
        <input type="text" id="number2" name="number2" value="${param.number2}"><br><br>
        
        <label for="operation">Operation:</label>
        <select id="operation" name="operation">
            <option value="add" ${param.operation == 'add' ? 'selected' : ''}>Addition</option>
            <option value="subtract" ${param.operation == 'subtract' ? 'selected' : ''}>Subtraction</option>
            <option value="multiply" ${param.operation == 'multiply' ? 'selected' : ''}>Multiplication</option>
            <option value="divide" ${param.operation == 'divide' ? 'selected' : ''}>Division</option>
        </select><br><br>
        
        <input type="submit" value="Calculate">
    </form>

    <%
        String number1Str = request.getParameter("number1");
        String number2Str = request.getParameter("number2");
        String operation = request.getParameter("operation");

        if (number1Str != null && number2Str != null && operation != null) {
            try {
                double number1 = Double.parseDouble(number1Str);
                double number2 = Double.parseDouble(number2Str);
                double result = 0;
                boolean validOperation = true;
                
                switch (operation) {
                    case "add":
                        result = number1 + number2;
                        break;
                    case "subtract":
                        result = number1 - number2;
                        break;
                    case "multiply":
                        result = number1 * number2;
                        break;
                    case "divide":
                        if (number2 != 0) {
                            result = number1 / number2;
                        } else {
                            out.println("<p style='color:red;'>Error: Division by zero is not allowed.</p>");
                            validOperation = false;
                        }
                        break;
                    default:
                        out.println("<p style='color:red;'>Error: Invalid operation.</p>");
                        validOperation = false;
                }
                
                if (validOperation) {
                    out.println("<h2>Result: " + result + "</h2>");
                }
            } catch (NumberFormatException e) {
                out.println("<p style='color:red;'>Error: Please enter valid numbers.</p>");
            }
        }
    %>
</body>
</html>
