<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Questions</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            margin: 50px auto;
            width: 60%;
            text-align: left;
        }
        .question {
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Questions</h1>
        <h2>Rating: ${ratings}</h2>
        <ul>
            <c:forEach items="${questions}" var="question">
                <li class="question">${question}</li>
            </c:forEach>
        </ul>
    </div>
</body>
</html>
