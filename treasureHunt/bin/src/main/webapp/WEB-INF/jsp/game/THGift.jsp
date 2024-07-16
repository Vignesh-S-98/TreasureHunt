<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Question</title>
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
    </style>
</head>
<body>
    <div class="container">
    <p>HI ${gift}</p>
     <form action="/nextQuestion" method="post">
            <button type="submit">Next Question</button>
      </form>
</body>
</html>