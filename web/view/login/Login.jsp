<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
       <head>
              <meta charset="UTF-8">
              <meta name="viewport" content="width=device-width, initial-scale=1.0">
              <meta http-equiv="X-UA-Compatible" content="ie=edge">
              <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
              <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
              <link href="css/login.css" rel="stylesheet" type="text/css"/>
              <title>Login Form</title>
              <style>
                     body{
                            width:100%;
                            display: flex;
                            flex-direction: column;
                            align-items: center;
                     }
              </style>
              <link href="../style/style_login.css" rel="stylesheet" type="text/css"/>
       </head>
       <body>
              <div class="login-wrap">
                     <div class="login-html">
                            <input id="tab-1" type="radio" name="tab" class="sign-in" checked><label for="tab-1" class="tab">Sign In</label>
                            <input id="tab-2" type="radio" name="tab" class="sign-up"><label for="tab-2" class="tab">Sign Up</label>
                            <div class="login-form">
                                   <div class="sign-in-htm">
                                          <div class="group">
                                                 <label for="user" class="label">Username</label>
                                                 <input id="user" type="text" class="input">
                                          </div>
                                          <div class="group">
                                                 <label for="pass" class="label">Password</label>
                                                 <input id="pass" type="password" class="input" data-type="password">
                                          </div>
                                          <div class="group">
                                                 <input id="check" type="checkbox" class="check" checked>
                                                 <label for="check"><span class="icon"></span> Keep me Signed in</label>
                                          </div>
                                          <div class="group">
                                                 <input type="submit" class="button" value="Sign In">
                                          </div>
                                          <div class="hr"></div>
                                          <div class="foot-lnk">
                                                 <a href="#forgot">Forgot Password?</a>
                                          </div>
                                   </div>
                                   <div class="sign-up-htm">
                                          <div class="group">
                                                 <label for="user" class="label">Username</label>
                                                 <input id="user" type="text" class="input">
                                          </div>
                                          <div class="group">
                                                 <label for="pass" class="label">Password</label>
                                                 <input id="pass" type="password" class="input" data-type="password">
                                          </div>
                                          <div class="group">
                                                 <label for="pass" class="label">Repeat Password</label>
                                                 <input id="pass" type="password" class="input" data-type="password">
                                          </div>
                                          <div class="group">
                                                 <label for="pass" class="label">Email Address</label>
                                                 <input id="pass" type="text" class="input">
                                          </div>
                                          <div class="group">
                                                 <input type="submit" class="button" value="Sign Up">
                                          </div>
                                          <div class="hr"></div>
                                          <div class="foot-lnk">
                                                 <label for="tab-1">Already Member?</a>
                                          </div>
                                   </div>
                            </div>
                     </div>
              </div>
       </body>
</html>