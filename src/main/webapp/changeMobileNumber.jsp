<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Mobile Number</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your Mobile Number successfully changed!</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeMobileNumberAction.jsp" method="post">
 <h3>Enter Your New Mobile Number</h3>
  <input class="input-style" type="number" name=mobileNumber placeholder="Enter Your New Mobile No" required>
 
 <hr>
<h3>Enter Password (For Security)</h3>
  <input class="input-style" type="password" name=password placeholder="Enter Password (For security)" required>

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