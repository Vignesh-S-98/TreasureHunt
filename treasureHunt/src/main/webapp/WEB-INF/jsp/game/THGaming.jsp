<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <%@ taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Treasure Hunt Game</title>
    <style>
      html {
        background-color: rgb(201, 203, 210);
        font-family: cursive;
      }
      body {
        font-family: cursive;
        margin: 20px;
      }
      .container {
        display: flexbox;
        margin: 50px auto;
        width: 300px;
        text-align: center;
      }
      select {
        width: 100%;
        padding: 10px;
        margin: 20px 0;
        font-size: 16px;
        color: rgb(242, 255, 0);
        background-attachment: fixed;
        background-color: rgb(165, 165, 248);
        border-radius: 100px;
        cursor: pointer;
        font-style: italic;
        font-family: cursive;
      }
      select:focus {
        background-color: antiquewhite;
        color: blueviolet;
      }

      .start_game button {
        color: rgb(6, 239, 239);
        background-color: black;
        border-radius: 100px;
        font-family: cursive;
      }
      .start_game button:hover {
        cursor: pointer;
        background-color: rgb(6, 250, 75);
        color: rgb(5, 52, 205);
        font-weight: bolder;
      }
      .logout {
        position: fixed;
        top: 10px;
        right: 10px;
      }
      .logout button {
        background-color: rgb(200, 0, 0);
        color: white;
        border: 1px dashed rgb(100, 0, 0);
        border-radius: 10px;
        padding: 1px 2px;
        font-size: larger;
        font-weight: bolder;
        font-family: cursive;
      }
      .logout button:hover {
        background-color: rgb(255, 0, 0);
        color: yellow;
        cursor: pointer;
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
        <hr />
        <h1>Hey ${userForm.userName} this is a Treasure Hunt Game</h1>
      </div>
      <form id="ratingForm" action="/game" method="post">
        <hr />
        <h3>${userForm.userName}</h3>
        <label for="rating">Select your Difficulty Rating to continue</label>
        <select id="rating" name="rating">
          <option value="">Select the rating</option>
          <c:forEach items="${ratings}" var="rating">
            <option value="${rating}">${rating.rating}</option>
          </c:forEach>
        </select>
        <div class="start_game">
          <button type="button" onclick="validateAndSubmitForm()">
            Start Game
          </button>
        </div>
      </form>
      <c:if test="${not empty error}">
        <div style="color: red">${error}</div>
      </c:if>
    </div>
    <div class="logout">
      <form id="loginForm" method="post" action="/login">
        <button type="submit">Bye Bye</button>
      </form>
    </div>
  </body>
</html>
