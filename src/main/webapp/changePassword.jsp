<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Password</title>
</head>
<body>
<%String msg=request.getParameter("msg");
if("notMatch".equals(msg))
{
%>
<h3 class="alert">New password and Confirm password does not match!</h3>
<%} %>

<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your old Password is wrong!</h3>
<%} %>
<%
if("done".equals(msg))
{
%>
<h3 class="alert">Password change successfully!</h3>
<%} %>

<%
if("invalis".equals(msg))
{
%>
<h3 class="alert">Some thing went wrong! Try again!</h3>
<%} %>
<form action="changePasswordAction.jsp" method="post">

<h3>Old Password</h3>
<input class="input-style" type="password" name="oldPassword" placeholder="Enter Old Password" required>
 
  <hr>
 <h3>New Password</h3>
 <input class="input-style" type="password" name="newPassword" placeholder="Enter New Password" required>
 
 <hr>
<h3>Confirm Password</h3>
<input class="input-style" type="password" name="confirmPassword" placeholder="Enter Confirm Password" required>

<hr>

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
</body>
<br><br><br>
</html>