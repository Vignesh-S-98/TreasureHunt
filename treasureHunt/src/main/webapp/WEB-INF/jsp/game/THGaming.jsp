<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Treasure Hunt Game</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        .container {
            margin: 50px auto;
            width: 300px;
            text-align: center;
        }
        select {
            width: 100%;
            padding: 10px;
            margin: 20px 0;
            font-size: 16px;
        }
    </style>
 <script>
        function validateAndSubmitForm() {
            var rating = document.getElementById("rating").value;
            if (rating === "") {
                alert("Please select a rating before starting the game.");
                return false;
            }
            document.getElementById("ratingForm").submit();
        }
    </script>
</head>
<body>

<div class="container">
    <div>
        <hr/>
        <h1>You are in gaming page ${userForm.userName} </h1>
        <form action="/login" method="get">
            <button type="submit">Logout</button>
            <input type="hidden" name="logout" value="true">
        </form>
    </div>
    <h1>Treasure Hunt Game</h1>
    <form id="ratingForm" action="/game" method="post">
        <h3>Hey ${userForm.userName}</h3>
        <label for="rating">Select Difficulty Rating:</label>
        <select id="rating" name="rating">
            <option value="">Select the rating</option>
            <c:forEach items="${ratings}" var="rating">
                <option value="${rating}">${rating.rating}</option>
            </c:forEach>
        </select>
        <button type="button" onclick="validateAndSubmitForm()">Start Game</button>
    </form>
    <c:if test="${not empty error}">
        <div style="color:red;">${error}</div>
    </c:if>
</div>

</body>
</html>
