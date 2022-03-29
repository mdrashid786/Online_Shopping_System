<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  
  <form action="forgotPasswordAction.jsp" method="post">
  <input type="email" name="email" placeholder="Enter Email" required>
  <input type="number" name="mobileNumber" placeholder="Enter Mobile No" required>
  <select name="securityQuestion">
  <option value="Question">Question</option>
  <option value="What was the first car">What was the first car</option>
  <option value="What is the name of first pet?">What is the name of first pet?</option>
  <option value="What is the name of town where you were born?">What is the name of town where you were born?</option>
  <option value="Who is your bestfriend">Who is your bestfriend</option>
  <option value="How many you have Father ">How many you have Father</option>
  </select> 
  <input type="text" name="answer" placeholder="Enter Answer" required>
  <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
 
<style>
.button {
  display: inline-block;
  padding: 15px 25px;
  font-size: 24px;
  cursor: pointer;
  text-align: center;
  text-decoration: none;
  outline: none;
  color: #fff;
  background-color: purple;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}

.button:hover {background-color: red}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
</style>
  <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
 
 
 
 
 
  </form>
     
      <h2><a href="">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
  
  <%
  String msg=request.getParameter("msg");
  if("done".equals(msg))
  {
  %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>


    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>
</body>
</html>