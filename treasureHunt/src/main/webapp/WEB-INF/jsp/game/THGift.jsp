<%@ page contentType="text/html;charset=UTF-8" language="java" %> <%@ taglib
uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
  <head>
    <title>Gift Box Game</title>
    <style>
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
      var giftIndex = Math.floor(Math.random() * 3); // Randomly choose the index for the box containing the gift

      function checkGift(element, index) {
        // Show box number when selected
        element.innerText = "Box " + (index + 1);

        // Check if the clicked box is the correct one
        if (index === giftIndex) {
          element.innerText = "${gift}"; // Display the gift value
          element.style.backgroundColor = "lightgreen"; // Optionally change color to indicate correct selection
          disableAllBoxes();
          document.getElementById("nextQuestionForm").style.display =
            "inline-block"; // Show next question form
        } else {
          element.innerText = "No"; // Display "No" briefly
          element.style.backgroundColor = "lightgray"; // Optionally change color to indicate wrong selection
          setTimeout(function () {
            element.innerText = "Box " + (index + 1); // Reset to box number after brief moment
          }, 1000); // Reset after 1 second (1000 milliseconds)
        }

        // Show the result message
        var resultMessage = document.getElementById("result");
        resultMessage.innerText =
          index === giftIndex ? "You found the gift!" : "No gift in this box!";
      }

      function disableAllBoxes() {
        boxes.forEach(function (box) {
          box.onclick = null; // Disable click event on all boxes
        });
      }
    </script>
  </body>
</html>
