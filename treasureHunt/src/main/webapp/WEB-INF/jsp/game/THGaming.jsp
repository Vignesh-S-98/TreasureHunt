<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Treasure Hunt Game</title>
    <style>
<<<<<<< Updated upstream
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
=======
      html {
        font-family: cursive;
        background-color: rgb(201, 203, 210);
        cursor: default;
        /* user-select: none; */
      }
      h1 {
        width: max-content;
        height: max-content;
      }
      h1:hover {
        transition: background-color 3.5s;
        background-color: rgb(175, 177, 181);
      }
      body {
        font-family: cursive;
        margin: 20px;
      }
      .mid_part:hover {
        transition: background-color 3.5s;
        background-color: rgb(175, 177, 181);
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
        transition: background-color 2s, color 2s;
      }

      .start_game button {
        color: rgb(6, 239, 239);
        background-color: black;
        border-radius: 100px;
        font-family: cursive;
        transition: background-color 1s, color 1s;
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
        transition: background-color 1s, color 1s;
      }
      .logout button:hover {
        background-color: rgb(255, 0, 0);
        color: yellow;
        cursor: pointer;
      }
>>>>>>> Stashed changes
    </style>
    <script>
        function submitForm() {
            document.getElementById("ratingForm").submit();
        }
    </script>
<<<<<<< Updated upstream
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
        <select id="rating" name="rating" onchange="submitForm()">
            <option value="">Select the rating</option>
            <c:forEach items="${ratings}" var="rating">
                <option value="${rating}">${rating.rating}</option>
            </c:forEach>
        </select>
        <button type="submit">Start Game</button>
    </form>
</div>

</body>
=======
  </head>
  <body>
    <div class="container">
      <div>
        <hr />
        <h1>
          Hey ${userForm.userName} <br />
          this is a Treasure Hunt Game
        </h1>
      </div>
      <form id="ratingForm" action="/game" method="post">
        <hr />
        <div class="mid_part">
          <h3>${userForm.userName}</h3>
          <label for="rating">Select your Difficulty Rating to continue</label>
        </div>
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
      <form id="loginForm" method="get" action="/login">
        <button type="submit">Bye Bye</button>
      </form>
    </div>
  </body>
>>>>>>> Stashed changes
</html>
