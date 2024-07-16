<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Question</title>
</head>
<body>
<div class="container">
    <h1>Question ${questionNumber}</h1>
    <p>${question}</p>
    <form action="/checkAnswer" method="post">
                Answer: <input type = "text" name ="inputAnswer">
                <button type="submit">Check your Answer</button>
    </form>

</div>
</body>
</html>
