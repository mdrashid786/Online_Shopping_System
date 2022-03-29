<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
  <img alt="" src="logo.png" height="45",width="35">
  <form action="signup_Action.jsp" method="post">
  <input type ="text" name="name" placeholder="Enter Name" required>
  <input type ="email" name="email" placeholder="Enter Email" required>
   <input type ="number" name="mobilenumber" placeholder="Enter Mobile Number" required>
   <select name="SecurityQuestion" required>
   <option value="Question">Security Question</option>
   <option value="What was the first car"> What was the first car</option>
   <option value="What is the name of first pet?">What is the name of first pet?</option>
   <option value="What is the name of town where you were born?">What is the name of town where you were born?</option> 
   <option value="Who is your bestfriend">Who is is your bestfriend</option>
   <option value="How many you have Father ">How many you have Father</option>
   </select> 
   <input type ="text" name="answer" placeholder="Enter Answer" required>
   <input type ="password" name="password" placeholder="Enter Password" required>
   
   
   
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
  <button class="button" type="Signup">Signup <i class='far fa-arrow-alt-circle-right'></i></button>
 
 
   
   
   
   
   
   <h2><a href="login.jsp">Login</a></h2>
  
  </form>
    
  </div>
  <div class='whysign'>
  <%
  
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
  <h1>Successfully Registered</h1>
  <%} %>
  <%
  if("invalid".equals(msg))
  {
  %>
  <h1>Some thing Went Wrong! Try Again !</h1>
  <%} %> 
    <h2>Online Shopping System</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>