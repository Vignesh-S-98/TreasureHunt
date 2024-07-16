<!DOCTYPE html>
<html>
  <head>
    <title>Login Page</title>
    <link rel="styling" href="src/main/webapp/WEB-INF/style/login.css"/>
  </head>

  <body>
    <div class="container">
      <fieldset>
        <legend>Login to enter the game</legend>
        <pre style="color: red">${errorMessage}</pre>
        <form method="post">
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
  </body>
</html>
