<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Add Change Address</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h3 class="alert">Address Successfully Updated !</h3>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h3 class="alert">Some thing Went Wrong! Try Again!</h3>
<%} %>
<%
 try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from users where email='"+email+"'");
	while(rs.next())
	{
%> 
<form action="addChangeAddressAction.jsp" method="post">
<h3>Address</h3>
   <input class="input-style" type="text"name="address" value="<%=rs.getString(7) %>" placeholder="Enter Address" required>
 <hr>
 <h3>City</h3>
   <input class="input-style" type="text"name="city" value="<%=rs.getString(8) %>" placeholder="Enter city" required>
<hr>
<h3>State</h3>
  <input class="input-style" type="text"name="State" value="<%=rs.getString(9) %>" placeholder="Enter State" required>
<hr>
<h3>Country</h3>
  <input class="input-style" type="text"name="country" value="<%=rs.getString(10) %>" placeholder="Enter country" required>
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




 <button class="button" type="submit"> Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
<% }
	}
catch(Exception e)
{
	System.out.println(e);
}
%> 
</body>
<br><br><br>
<br>
</html>