<%@page import="project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" rel="stylesheet">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change mobile number</title>
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
<form action="changeMobileNumberAction.jsp" modthod="post">
 <h3>Enter Your New Mobile Number</h3>
 <input class="input-style" type="number" name="mobileNumber" placeholder="Enter Your New Mobile Number" required>
 <hr>
<h3>Enter Password (For Security)</h3>
 <input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required>
<hr>
 <button class="button" type="submit">Save <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</html>