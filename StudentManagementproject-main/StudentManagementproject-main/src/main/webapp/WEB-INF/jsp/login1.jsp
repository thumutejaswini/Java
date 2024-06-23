
    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Student Management System</title>
    <link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
    <link rel="stylesheet" href="log.css">
</head>
<body>
<jsp:include page="navbar.jsp" />
    <font color="red">${errorMessage}</font>
    <form method="post" action="${pageContext.request.contextPath}/login">
    <div class="login-container" id="login">
        <div class="top">
            <span>Don't have an account? <a href="#" onclick="register()">Sign Up</a></span>
            <header>Login</header>
        </div>
        <div class="input-box">
            User Name : <input type="text" name="name" /><br>
            <i class="bx bx-user"></i>
        </div>
        <div class="input-box">
            <br> Password : <input type="password" name="password" /><br>
            <i class="bx bx-lock-alt"></i>
        </div>
        <div class="input-box">
            <input type="submit" class="submit" value="Sign In">
        </div>
        <div class="two-col">
            <div class="one">
                <input type="checkbox" id="login-check">
                <label for="login-check"> Remember Me</label>
            </div>
            <div class="two">
                <label><a href="#">Forgot password?</a></label>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
