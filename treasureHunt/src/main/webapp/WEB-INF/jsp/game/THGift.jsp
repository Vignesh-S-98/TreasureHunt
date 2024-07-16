<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Gift Box Game</title>
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
        text-align: center;
      }
      .box {
        display: inline-block;
        width: 100px;
        height: 100px;
        border: 1px solid #000;
        margin: 10px;
        cursor: pointer;
        text-align: center;
        line-height: 100px;
        font-size: 18px;
        background-color: rgb(154, 154, 244);
        color: blueviolet;
      }
      .box:hover {
        background-color: rgb(100, 100, 231);
        color: rgb(225, 201, 247);
      }
    </style>
  </head>
  <body>
    <div class="container">
      <p>HI ${gift}</p>
      <div class="box" onclick="checkGift(this, 0)">Box 1</div>
      <div class="box" onclick="checkGift(this, 1)">Box 2</div>
      <div class="box" onclick="checkGift(this, 2)">Box 3</div>
      <p id="result"></p>
      <form
        id="nextQuestionForm"
        action="/nextQuestion"
        method="post"
        style="display: none"
      >
        <button id="nextQuestionButton" type="submit">Next Question</button>
      </form>
    </div>

    <script>
      var boxes = document.querySelectorAll(".box");
      var giftIndex = Math.floor(Math.random() * 3);
      function checkGift(element, index) {
        element.innerText = "Box " + (index + 1);

        if (index === giftIndex) {
          element.innerText = "${gift}";
          element.style.backgroundColor = "gold";
          disableAllBoxes();
          document.getElementById("nextQuestionForm").style.display =
            "inline-block";
        } else {
          element.innerText = "No";
          setTimeout(function () {
            element.innerText = "Box " + (index + 1);
          }, 1000);
          element.style.backgroundColor = "red";
          setTimeout(function () {
            element.style.backgroundColor = "rgb(154, 154, 244)";
          }, 1000);
        }

        var resultMessage = document.getElementById("result");
        resultMessage.innerText =
          index === giftIndex ? "You found the gift!" : "No gift in this box!";
      }

      function disableAllBoxes() {
        boxes.forEach(function (box) {
          box.onclick = null;
        });
      }
    </script>
  </body>
</html>
