<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/reset.css">
      <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/questionmanage.css">
<title>main</title>
</head>
<body>
  <div id="main-content">
    <div id="header">
      <div id="logo"></div>
      <div id="tool"></div>
    </div>
    <div id="breadcrumb">
      <div class="menu">
        <ul>
          <li style="background: #D2DAE3;">User Management</li>
          <li>Create User</li>
        </ul>
      </div>
    </div> 
    <div id="main" style="width: 1240px; height: 510px; border: 1px solid; border-radius: 3px; position: relative; left: 20px; top: 10px; background-color: #FFFFFF;">
      <div class="user-left" id="user-left" style="width: 200px; height: 510px; border: 1px solid; float: left;">
        <ul>
          <li style="background: #2E4358;">Question List</li>
          <li style="color: #2E4358">Create Question</li>
        </ul>
      </div>
      <div class="main-right" id="main-right" style="width: 980px; height: 400px; border: 1px solid; border-radius: 3px; float: left; margin-left: 20px;"></div>
      <div id="main-bottom" style=" width: 1240px; height: 30px; position: relative; top: 510px; padding: 0px; border: 1px solid;">
        <label style="   font-size:12px; font-family: Arial Reular; color: #2E4358; position: absolute; left: 450px;">Copyright@2017Augmentum.inc.All Rights Reserved.</label>
      </div>
    </div>
  </div>
</body>
</html>