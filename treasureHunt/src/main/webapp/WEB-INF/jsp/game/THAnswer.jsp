<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Question</title>
    <style>
      html {
        font-family: cursive;
        background-color: rgb(201, 203, 210);
      }
      body {
        margin: 20px;
      }
      .container {
        margin: 50px auto;
        width: 60%;
        text-align: left;
        color: rgb(1, 84, 57);
      }
      button[type="submit"] {
        font-size: large;
        padding: 12px 24px;
        border-radius: 10px;
        cursor: pointer;
        transition: background-color 0.3s, color 0.3s;
        border: none;
      }
      button[type="submit"]:hover {
        filter: brightness(0.8);
      }
      button[type="submit"].next-question {
        background-color: gold;
        color: rgb(93, 86, 48);
        font-weight: bolder;
      }
      button[type="submit"].retry-question {
        background-color: rgb(126, 222, 126);
        color: white;
        font-weight: bolder;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <c:choose>
        <c:when test="${empty error}">
          <h1>Whoohooo!!! Correct Answer</h1>
          <form action="/nextQuestion" method="post">
            <button type="submit" class="next-question">Next Question</button>
          </form>
        </c:when>
        <c:otherwise>
          <div class="error" style="color: red" font-weight: bolder>
            ${error}
          </div>
          <form action="/question" method="get">
            <button type="submit" class="retry-question">Retry Question</button>
          </form>
        </c:otherwise>
      </c:choose>
    </div>
  </body>
</html>
