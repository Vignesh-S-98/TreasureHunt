<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<!DOCTYPE html>
<html>
<head>
    <title>Treasure Hunt</title>
</head>
<body>
<div class="container">
<hr/>
<h1>You are in gaming page ${userForm.userName} </h1>
 <form action="/login" method="get">
        <button type="submit">Logout</button>
</div>
</body>
</html>