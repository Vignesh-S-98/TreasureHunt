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
      h1 {
        color: blueviolet;
        display: flex;
        margin-left: 3pc;
      }
      h3 {
        color: brown;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 10vh;
        font-size: x-large;
        cursor: no-drop;
      }
      form {
        color: blue;
        font-size: x-large;
        cursor: no-drop;
        margin-left: 6pc;
      }
      input {
        color: white;
        background-color: rgb(34, 49, 63);
        border-radius: 10px;
        padding: 12px;
        font-size: large;
        width: 80%;
        max-width: 400px;
        outline: none;
      }
      input:focus {
        border-color: rgb(74, 239, 143);
      }

      button {
        font-size: large;
        margin-top: 20px;
        padding: 10px 20px;
        border-radius: 100cm;
        background-color: rgb(0, 255, 17);
        color: black;
        cursor: pointer;
        font-family: cursive;
        margin-left: 2pc;
      }
      button:hover {
        background-color: rgb(0, 200, 150);
        color: white;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <h1>Your Question number ${questionNumber} is</h1>
      <hr />
      <h3>${question}</h3>
      <hr />
      <form action="/checkAnswer" method="post">
        Type your Answer:
        <br />
        <input type="text" name="inputAnswer" />
        <br />
        <button type="submit">Check your Answer</button>
      </form>
    </div>
  </body>
</html>
