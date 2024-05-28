<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome Page</title>
</head>
<body>
<div class="container">
    <h1>Welcome to the game ${userForm.userName}</h1>
   <hr/>
<p>You are logged into a ${userForm.userRole} account</p>

<hr/>
    <form:form modelAttribute="userForm">
        <h1><form:input path="userName" readonly="true" /></h1>
       <hr/>
        <p>You are logged into a <form:input path="userRole" readonly="true" /> account</p>
    </form:form>
     <form action="/game" method="get">
            <button type="submit">Let's play</button>
</div>
</body>
</html>