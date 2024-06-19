<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Welcome Page</title>
    <style>
      * {
        background-color: rgb(201, 203, 210);
      }
      .container {
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
        height: 100vh;
        font-family: "Times New Roman", Times, serif;
        font-style: italic;
      }
      .logout {
        position: fixed;
        top: 10px;
        right: 10px;
      }
      h1 {
        color: rgb(53, 152, 250);
        font-weight: bold;
        font-family: cursive;
        text-align: center;
        padding: 10px;
        padding-bottom: 4px;
        text-shadow: 1em;
        font-size: larger;
        background-color: rgb(190, 216, 239);
      }
      fieldset {
        border: 2px solid rgb(62, 8, 239);
        border-radius: 10px;
        padding: 20px;
        background-color: rgb(181, 198, 234);
      }
      p {
        font-weight: unset;
        font-family: "Times New Roman", Times, serif;
        text-align: center;
        padding: 10px;
        padding-bottom: 4px;
        text-shadow: 1em;
        font-size: larger;
        background-color: rgb(190, 216, 239);
      }
      form {
        background-color: rgb(220, 220, 220);
        border: 1px dashed rgb(53, 152, 250);
        padding: 2px;
        border-radius: 100px;
        margin-top: 20px;
      }
      button {
        background-color: rgb(119, 15, 137);
        padding: 10px 20px;
        border: 4px dashed;
        border-radius: 100px;
        cursor: pointer;
        font-size: larger;
        font-weight: bolder;
      }
      button:hover {
        background-color: rgb(205, 92, 225);
        color: rgb(25, 84, 245);
      }
      .logout button {
        background-color: rgb(200, 0, 0);
        color: white;
        border: 1px dashed rgb(100, 0, 0);
        border-radius: 10px;
        padding: 1px 2px;
        font-size: larger;
        font-weight: bolder;
      }
      .logout button:hover {
        background-color: rgb(255, 0, 0);
        color: yellow;
      }
    </style>
  </head>
  <body>
    <div class="container">
      <fieldset>
        <h1>Welcome to the game ${userForm.userName}</h1>
        <br />
        <hr />
        <p>You are logged into a ${userForm.userRole} account</p>
        <br />
      </fieldset>
      <hr />
      <!--
    <form:form modelAttribute="userForm">
        <h1><form:input path="userName" readonly="true" /></h1>
        <hr/>
        <p>You are logged into a <form:input path="userRole" readonly="true" /> account</p>
    </form:form>
    -->
      <form action="/game" method="get">
        <button type="submit">Let's play</button>
      </form>
    </div>
    <div class="logout">
      <form id="loginForm" method="get" action="/login">
        <button type="submit">Bye Bye</button>
      </form>
    </div>
  </body>
</html>
