<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<head> <h1> Login to enter the game </h1>
</head>
<body>
<div class="container">
<pre>${errorMessage}</pre>
<form method="post" >
    <!--Name: -> will get displayed in the webpage
      while name -> the value is sent in the url like UserName="value" -->
    Name : <input type= "text" name ="userName">
    <br/>
    <br/>
    Password : <input type ="password" name = "password">
    <br/>
    <br/>
    <input type ="submit">
</form>
</div>
</body>
</html>