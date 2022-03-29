<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String email=session.getAttribute("email").toString();
String address=request.getParameter("address");
String city=request.getParameter("city");
String state=request.getParameter("State");
String country=request.getParameter("country");

try
{
	Connection con=ConnectionProvider.getCon();
	PreparedStatement ps1=con.prepareStatement("update users set address=?,city=?,State=?,country=? where email=?");
	ps1.setString(1, address);
	ps1.setString(2, city);
	ps1.setString(3, state);
	ps1.setString(4, country);
	ps1.setString(5, email);
	ps1.executeUpdate();
	response.sendRedirect("addChangeAddress.jsp?msg=valid");
	
}
catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addChangeAddress.jsp?msg=invalid");
}

%>