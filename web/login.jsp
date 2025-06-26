
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>WELCOME LOGIN</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" type="text/css" href="style/login.css">
        <link href="https://fonts.googleapis.com/css?family=Nunito:400,600,700,800&display=swap" rel="stylesheet">
    </head>

    <body>
        <div class="cont">
          
            <div class="form sign-in">
                <form action="login" method="post">
                    <h2>Sign In</h2>
                    <p class="text-danger">${mess}</p>
                    <label>
                        User Name:
                        <input name="name" type="text" value=""><br>
                    </label>
                    <label>
                        Password:
                        <input name="pass" type="password" value=""><br>
                    </label>
                    <!--                <button><input type="submit" name="submit" value="Log in" /></button>-->
                    <button class="submit" name="submit">Sign In</button>
                  
                    <a href="forgotPassword.jsp">Forgot Password ?</a>

                    <div class="social-media">
                        <ul>
                            <li><img src="image/facebook.png"></li>
                            <li> <a href="https://accounts.google.com/o/oauth2/auth?scope=email&redirect_uri=http://localhost:8080/Website_Laptop/login-google&response_type=code
    &client_id=481924402277-2r527uo5cu6cb602r8t7cjspejeoc2sm.apps.googleusercontent.com&approval_prompt=force"><img src="image/google.jpg"></a> </li>
                            <li><img src="image/linkedin.png"></li>
                            <li><img src="image/instagram.png"></li>
                        </ul>
                    </div>
                </form>
            </div>


            <div class="sub-cont">
                <div class="img">
                    <div class="img-text m-up">
                        <h2>New here?</h2>
                        <p>Sign up and discover great amount of new opportunities!</p>
                    </div>
                    <div class="img-text m-in">
                        <h2>One of us?</h2>
                        <p>If you already has an account, just sign in. We've missed you!</p>
                    </div>
                    <div class="img-btn">
                        <span class="m-up">Sign Up</span>
                        <span class="m-in">Sign In</span>
                    </div>
                </div>
                <div class="form sign-up" >
                    <form action="Register" method="post">
                        <label>
                            User Name:
                            <input name="name" type="text" value=""><br>
                        </label>
                        <label style="margin-top: -10px">
                            Email:
                            <input name="email" type="email" value=""><br>
                        </label>
                        <label style="margin-top: -5px">
                            <span>Password</span>
                            <input type="password" name="pass">
                        </label>
                        <label >
                            <span>Confirm Password</span>
                            <input type="password" name="repass">
                        </label>
                        <label >
                            <span>Full name</span>
                            <input type="text" name="fullname">
                        </label>
                        <label>
                            <span>BirthDay</span>
                            <input type="date" name="birthday">
                        </label>
                        <label>
                            <span>Phone</span>
                            <input type="text" name="phone">
                        </label>
                        <label>
                            <span>Address</span>
                            <input type="text" name="address">
                        </label>
                        <button name="submit" class="submit">Sign Up Now</button>
                    </form>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/login.js"></script>
    </body>
</html>
