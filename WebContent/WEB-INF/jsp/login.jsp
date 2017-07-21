<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>
<%@page import="com.augmentum.exam.Constants" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/login.css">
    <title>login</title>
  <style>
    .error-message{
      color: #FF69B4;
  }
  </style>
    <script>
        function login() {
            var loginFormObj = document.getElementById("loginForm");
            var isSubmitForm = true;
            var userName = document.getElementById("userName").value;
            if (!userName) {
                document.getElementById("name-error-image").style.visibility = "visible";
                isSubmitForm = false;
            } else {
            	document.getElementById("name-error-image").style.visibility = "hidden";
            }
    
            var password = document.getElementById("password").value;
            if (!password) {
                document.getElementById("password-error-image").style.visibility = "visible";
                isSubmitForm = false;
            } else {
            	document.getElementById("password-error-image").style.visibility = "hidden";
            }
    
            if (isSubmitForm) {
                loginFormObj.submit();  
            }
        }
        function nameHiddenImage() {
            var image = document.getElementById("name-error-image");
            if (image.style.visibility == "visible") {
                image.style.visibility = "hidden";
            }
        }
        function passwordHiddenImage() {
            var image = document.getElementById("password-error-image");
            if (image.style.visibility == "visible") {
                image.style.visibility = "hidden";
            }
        }
    </script>
  </head>


  <body>
    <div class="login-content">
      <div class="login-content-left">
        <div class="login-title">
           <img alt="" src="static/style/images/LOGO_Web_Login_90x180.png" class="login-title-image">
           <label class="login-title-font">Online Exam Web System</label>
        </div>
      </div>

      <div class="login-content-right">
        <span class="login-content-right-welcome">Welcome to login!</span>
        <div class="login-form">
            <%
              String tipMessage = (String)request.getAttribute(Constants.TIP_MESSAGE);
              String visibility = "hidden";
              if (tipMessage != null && !tipMessage.equals("")) {
                  visibility = "visible";
              }
            %>
          <form action="login" id="loginForm" method="POST">
            <input type="text" id="error" name="error" class="login-form-error" style="visibility: <%=visibility %>" value="<%=tipMessage
            %>" />
            <div class="login-form-name">
              <img alt="" src="static/style/images/ICN_Usename_20x20.png.png" class="login-form-name-image1" />
              <input type="text" id="userName" name="userName" placeholder="Username" class="login-form-name-input" onFocus="nameHiddenImage()" />
              <img alt="" src="static/style/images/ICN_Client_Login_Wrong_20X20.png" class="login-form-name-image2" id="name-error-image" />
              <br/>
            </div>
            <div class="login-form-password">
              <img alt="" src="static/style/images/ICN_Password_20x15.png.png" class="login-form-password-image1" />
              <input type="password" id="password" name="password" placeholder="Password" class="login-form-password-input" onFocus="passwordHiddenImage()" />
              <img alt="" src="static/style/images/ICN_Client_Login_Wrong_20X20.png" class="login-form-password-image2" id="password-error-image" />
              <br/>
            </div>
            <div class="login-form-submit">
              <input type="button" value="Login" onclick="login()" class="login-form-submit-button"/>
            </div>
            <div class="login-form-remember">
              <input type="checkbox" name="remember" value="remember" class="login-form-remember-check" /><label class="login-form-remember-label1">Remember me</label>
              <label class="login-form-remember-label2">Forget the password?</label>
            </div>
          </form>
        </div>
      </div>
      <div class="login-content-bottom">
        <div style="width: 1280px; border-top: 1px solid" ></div>
        <label class="login-content-bottom-label">Copyright@2017Augmentum.inc.All Rights Reserved.</label>
      </div>
    </div>
  </body>
</html>