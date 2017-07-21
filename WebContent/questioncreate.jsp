<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/reset.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/common.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/static/style/questionmanage.css">
    <title>question create</title>
    <script>
        function saveQuestion() {
            var editQuestionObj = document.getElementById("edit-question");
            var isSubmitForm = true;
          
            var questionTitle = document.getElementById("question-title").value;
            alert(questionTitle);
            if (!questionTitle) {
                isSubmitForm = false;
            }
            var choiceA = document.getElementById("choice-a").value.trim();
            var choiceB = document.getElementById("choice-b").value.trim();
            var choiceC = document.getElementById("choice-c").value.trim();
            var choiceD = document.getElementById("choice-d").value.trim();
            if (!choiceA | choiceB | choiceC | choiceD) {
                isSubmitForm = false;
            }
  
            if (isSubmitForm) {
  
               editQuestionObj.submit(); 
            }
        }
    </script>
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
      <div style="width: 200px; height: 30px; border: 1px solid; margin-left: 20px; line-height: 30px; position: absolute;">
        <label>hello</label>
      </div>
      <div id="main-content">

        <form id="edit-question" action="save" method="GET">
        <div style="width: 645px; height: 570px; position: relative; left: 300px; top: 10px; display: inline-block;">
          <ul style="">
            <li style="height: 90px; line-height: 90px;">
              <label style="width: 90px; float: left; font-family: Arial Regular; font-size: 14px; color: #0A0A0A;">Question ID:</label>
              <span><input type="text" style="margin-left: 40px; border: 1px solid #2E4358; border-radius: 3px;"/></span>
            </li>

            <li style="height: 90px;">
              <label style="width: 90px; height: 90px; line-height: 90px; float: left; font-family: Arial Regular; font-size: 14px; color: #0A0A0A;">Question:</label>
              <span><textarea id="question-title" name="question-title" style="height: 90px; margin-left: 40px; border: 1px solid #2E4358; border-radius: 3px; width: 506px;"></textarea></span>
            </li>
            
              <li style="margin-top: 20px; overflow: hidden; height: 130px;;">
                <label style="float: left; width: 90px; font-family: Arial Regular; font-size: 14px; color: #0A0A0A;">Answer:</label>
                <ul style="float: left; margin-left: 40px; width: 511px;">

                  <li style="height: 35px;">
                    <img src="static/images/BTN_Radio_Unselected_16x16.png.png" style="position: relative; top: 5px;">
                    <label style="margin-left: 10px;">A</label>
                    <span><input id="choice-a" name="choice-a" type="text" style="width: 457px; margin-left: 10px; border: 1px solid #2E4358; border-radius: 3px;" /></span>
                  </li>
                  
                  <li style="height: 35px;">
                    <img src="static/images/BTN_Radio_Selected_16x16.png.png" style="position: relative; top: 5px;">
                    <label style="margin-left: 10px;">B</label>
                    <span><input id="choice-b" name="choice-b" type="text" style="width: 457px; margin-left: 10px; border: 1px solid #2E4358; border-radius: 3px; background: #D2DAE3" /></span>
                  </li>
                  
                  <li style="height: 35px;">
                    <img src="static/images/BTN_Radio_Unselected_16x16.png.png" style="position: relative; top: 5px;">
                    <label style="margin-left: 10px;">C</label>
                    <span><input id="choice-c" name="choice-c" type="text" style="width: 457px; margin-left: 10px; border: 1px solid #2E4358; border-radius: 3px;" /></span>
                  </li>
                  
                  <li style="height: 20px;">
                    <img src="static/images/BTN_Radio_Unselected_16x16.png.png" style="position: relative; top: 5px;">
                    <label style="margin-left: 10px;">D</label>
                    <span><input id="choice-d" name="choice-d" type="text" style="width: 457px; margin-left: 10px; border: 1px solid #2E4358; border-radius: 3px;" /></span>
                  </li>
                  
                </ul>
              </li>
          </ul>
          <div style="width: 645px; height: 200px; position: relative;">
            <div style="width: 150px; height: 30px; line-height: 30px; border: 1px; text-align: center; border-radius: 3px; position: absolute; left: 160px; top: 50px; background: #FE9901; font-family: Arial Regualr; font-size: 14px; color: #FFFFFF;" onclick="saveQuestion()">Save</div>
            <div style="width: 150px; height: 30px; line-height: 30px; border: 1px; text-align: center; border-radius: 3px; position: absolute; left: 340px; top: 50px; background: #FE9901; font-family: Arial Regualr; font-size: 14px; color: #FFFFFF;">Cancel</div>
          </div>
        </div>
        </form>

      </div>
    </div>
  </body>
</html>