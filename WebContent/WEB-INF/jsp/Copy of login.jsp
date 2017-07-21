<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.HashMap" %>
<%@page import="java.util.Map" %>
<%@page import="com.augmentum.exam.Constants" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="css/login.css">
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
            document.getElementById("errorUserName").innerHTML = "User Name can't be empty";
            isSubmitForm = false;
        } else {
            document.getElementById("errorUserName").innerHTML = "";
        }

        var password = document.getElementById("password").value;
        if (!password) {
            document.getElementById("errorPassword").innerHTML = "Password can't be empty"
            isSubmitForm = false;
        } else {
            document.getElementById("errorPassword").innerHTML = "";
       }

        if (isSubmitForm) {
            loginFormObj.submit();  
    }
  }
  </script>
  </head>


  <body>
    <div id="main-body">
      <div id="main-body-top">
      </div>
      <div id="main-body-bottom">
        <div id="main-content">
          <%
            String tipMessage = (String)request.getAttribute(Constants.TIP_MESSAGE);
            if (tipMessage != null) {
                out.print(tipMessage);
            }

            Map<String, String> errorFields = (Map<String, String>)request.getAttribute(Constants.ERROR_FIELDS);
            if(errorFields == null){
                errorFields = new HashMap<String, String>();
            }
          %>
          <form action="login" id="loginForm" method="POST">

            User Name <input type="text" id="userName" name="userName" />
            <label id="errorUserName" class="errorMessage"><%
            String userNameErrorMessage = errorFields.get("userName") == null ? "" : errorFields.get("userName");
            out.print(userNameErrorMessage);
            %></label>
            <br/>

            Password &nbsp;<input type="password" id="password" name="password" />
            <label id="errorPassword" class="errorMessage"><%
            String passwordErrorMessage = errorFields.get("password") == null ? "" : errorFields.get("password");
            out.print(passwordErrorMessage);
            %></label>
            <br/>

            <input type="button" value="Login" onclick="login()" />

          </form>
        </div>
      </div>
    </div>
  </body>
</html>