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
        <c:choose>
            <c:when test="${empty error}">
               <h1>Correct Answer</h1>
               <form action="/nextQuestion" method="post">
                    <button type="submit">Next Question</button>
               </form>
            </c:when>
             <c:otherwise>
                    <div style="color:red;">${error}</div>
                    <form action="/question" method="get">
                       <button type="submit">Retry Question</button>
                    </form>
             </c:otherwise>
        </c:choose>
    </div>
</body>
</html>
