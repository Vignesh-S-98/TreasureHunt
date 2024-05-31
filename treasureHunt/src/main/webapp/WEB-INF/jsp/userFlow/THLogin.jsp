<!DOCTYPE html>
<html>
  <head>
    <title>Login Page</title>
    <style>
      html {
        position: fixed;
        height: 100%;
        width: 100%;
      }

      html::before {
        content: "";
        position: fixed;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-image: url("../../../solution/dog.png");
        background-size: cover; /* Make sure the image covers the entire background */
        background-repeat: no-repeat; /* Prevent the image from repeating */
        opacity: 0.5; /* Adjust the opacity to your desired level */
        z-index: -1; /* Ensure the background stays behind all content */
      }

      .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
      }

      .error-popup {
        display: none; /* Initially hide the error popup */
      }

      .error-popup pre {
        background-color: #f8d7da;
        color: #721c24;
        padding: 10px;
        padding-left: 5px;
        border: 1px solid #f5c6cb;
        border-radius: 5px;
        position: absolute;
        top: 20px;
        left: 50%;
        transform: translateX(-50%);
        width: 60%;
        text-align: center;
        z-index: 1000; /* Ensure it appears above other elements */
      }

      fieldset {
        border: 2px solid rgb(62, 8, 239);
        border-radius: 10px;
        padding: 20px;
        background-color: rgb(181, 198, 234);
      }

      legend {
        color: rgb(0, 0, 0);
        font-weight: bold;
        font-family: cursive;
        text-align: center;
        padding: 40px;
        padding-bottom: 4px;
        text-shadow: 1em;
        font-size: larger;
      }

      form {
        color: rgb(62, 8, 239);
        font-weight: bold;
        font-family: cursive;
        display: flex;
        flex-direction: column;
        align-items: center;
      }

      label {
        margin-bottom: 5px;
        font-size: larger;
      }

      input[type="text"],
      input[type="password"] {
        color: rgb(68, 138, 14);
        margin-bottom: 10px;
        cursor: text;
        display: inline-block;
      }

      button {
        background-color: rgb(180, 167, 222);
        color: rgb(0, 102, 255);
        text-align: center;
        font-size: 16px;
        border: 2px dotted black;
        margin-left: 0px;
        border-radius: 5px;
        cursor: pointer;
        width: 75px;
        padding: 0.1em;
      }

      button:hover {
        background-color: rgb(84, 197, 113);
      }
    </style>
  </head>
  <body>
    <div class="container">
      <fieldset>
        <legend>Login to enter the game</legend>
        <form id="loginForm" method="post" action="/login">
          <div class="error-popup" id="errorPopup">
            <pre id="errorMessage">${errorMessage}</pre>
          </div>
          <label for="userName">Name:</label>
          <input type="text" id="userName" name="userName" />
          <br />
          <label for="password">Password:</label>
          <input type="password" id="password" name="password" />
          <br />
          <button type="submit">Submit</button>
        </form>
      </fieldset>
    </div>
    <script>
      document
        .getElementById("loginForm")
        .addEventListener("submit", function (event) {
          const userName = document.getElementById("userName").value.trim();
          const password = document.getElementById("password").value.trim();
          const errorMessageElement = document.getElementById("errorMessage");
          let errorMessage = "";

          if (!userName) {
            errorMessage = "Username is required.";
          } else if (!password) {
            errorMessage = "Password is required.";
          }

          if (errorMessage) {
            event.preventDefault(); // Prevent form submission
            errorMessageElement.textContent = errorMessage;
            document.getElementById("errorPopup").style.display = "block";
          }
        });

      document.addEventListener("DOMContentLoaded", function () {
        const errorMessageElement = document.getElementById("errorMessage");
        if (errorMessageElement.textContent.trim()) {
          document.getElementById("errorPopup").style.display = "block";
        }
      });
    </script>
  </body>
</html>
