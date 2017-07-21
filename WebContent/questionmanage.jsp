<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/common.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/questionmanage.css">
    <title>question manage</title>
  </head>
  <body>
    <div id="main-body">
  
      <div id="header">
          <img alt="" src="static/style/images/LOGO_Web_40x240.png" class="header-logo">
          <label class="header-font">Online Exam Web System</label>
          <div class="header-tool">
            <div>
              <label class="tool-switch-language">中文</label>
            </div>
            <div class="tool-user">
              <img  class="tool-user-image" src="static/style/images/ICN_Web_PersonalInformation_20x20.png  .png" alt=""/>
              <label class="tool-user-userstatus">Logout</label>
              <label class="tool-user-username">Dick Chen</label>
            </div>
          </div>
      </div>
  
      <div id="breadcrumb">
        <div class="menu">
          <ul>
            <li style="background: #D2DAE3;"><a>Question Management</a></li>
            <li style="margin-left: 104px; text-align: left;"><a>Exam Management</a></li>
          </ul>
        </div>
      </div>
  
      <div id="main-content">
    
        <div class="main-left" id="main-left">
          <ul>
            <li style="background: #2E4358;"><a>Question List</a></li>
            <li style="color: #2E4358; border-bottom: 1px solid;"><a>Create Question</a></li>
          </ul>
        </div>
  
        <div class="main-right" id="main-right">
           <div class="search">
             <div class="search-box">
               <input class="search-input" type="text" placeholder="Please input the keyword"/>
               <img class="search-image" src="static/images/ICN_Search_15x20.png.png" alt=""/>
             </div>
        </div>
          <div class="table">
            <div class="table-header">
              <ul>
                <li class="question-id" style="width: 40px; margin-left: 130px;">ID</li>
                <li class="question-description" style="width: 450px; margin-left: 90px;">Description</li>
                <li class="question-edit" style="margin-left: 90px;">Edit</li>
                <li class="question-edit-select" style="margin-left: 50px;"><img src="static/images/ICN_Unselected_15x15.png  .png"/></li>
              </ul>
            </div>
  
            <div class="table-content">
              <ul>
                <li class="question-id" style="width: 20px; margin-left: 70px;">1</li>
                <li class="question-qid" style="margin-left: 40px;">Q002089</li>
                <li class="question-description" style="margin-left: 90px; width: 450px;">Which of the following is connection about the DB design ?</li>
                <li class="question-edit" style="margin-left: 100px;"><img src="static/images/ICN_Edit_15x15.png.png"/></li>
                 <li class="question-edit-select" style="margin-left: 51px;"><img src="static/images/ICN_Unselected_15x15.png  .png"/></li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div id="main-bottom">
          <label>Copyright@2017Augmentum.inc.All Rights Reserved.</label>
      </div>
    </div>
  </body>
</html>