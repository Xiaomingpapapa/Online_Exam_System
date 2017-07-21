<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.augmentum.exam.model.User" %>
<%@page import="com.augmentum.exam.Constants" %>

<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
    <meta http-equiv="Pragma" content="no-cache">
    <title>welcome</title>
  </head>
  <script>
    function logout() {
        location.href = "/exam/logout";
    }
  </script>
  <body>
    <%
      User user = (User) session.getAttribute(Constants.USER);
      if (user == null) {
          response.sendRedirect("/login");
      } else {
    %>
    welcome! &nbsp;
    <%
        String userName = user.getUserName();
        out.print(userName);
        }
    %>
    <input type="button" value="Logout" onclick="logout()" />
    
  </body>
</html>