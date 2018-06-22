<%-- 
    Document   : style-demo
    Created on : May 5, 2018, 4:17:26 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Here</title>
    </head>
    <body>
       
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Sign Up</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="../Home.jsp">Ambo University</a></h1>
    <p>Fill the required information please...</p>
    <div id="topnav">
      <ul>
        <li><a href="../Home.jsp">Home</a></li>
        <li><a class="active" href="Create Account.jsp">Sign Up</a></li>
        <li><a href="Registration.jsp">Registration</a></li>
        
        
      </ul>
    </div>
    
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
     
      
     
      
      <h2>SignUp Here</h2>
      <div id="respond">
        <form action="Create Account.jsp" method="post">
            UserName<br><input type="text" name="UserName" value="" /><br><br>
            Password<br><input type="password" name="Password" value="" /><br><br>
            Confirm PassWord<br><input type="password" name="ConfirmPassword" value="" /><br><br>
            
            <input type="submit" value="SignUp" name="SignUp" />
        </form>
          
      </div>
    </div>
    <div id="column">
      <div id="featured">
        <ul>
          <li>
            <h2>University Overview </h2>
            <p class="imgholder"><img src="../images/demo/logo.jpg" alt="" /></p>
            <p>Founded in 2011, Ambo University is a public higher education institution located in the large town of Ambo (population range of 50,000-249,999 inhabitants), Oromia. Officially accredited and/or recognized by the Ministry of Education, Ethiopia, Ambo University is a coeducational higher education institution. Ambo University offers courses and programs leading to officially recognized higher education degrees in several areas of study. See the uniRank degree levels and areas of study matrix below for further details.</p>
           
          </li>
        </ul>
      </div>
        
      <div class="holder"> 
        <h2 class="title"><img src="../images/demo/logo2.jpg" alt="" />Ambo university Graduation Cermony</h2>
  <br><br><br>
     
      </div>
      </div>
    <div class="clear"></div>
  </div>
</div>
    <!-- End Contact Form -->
    
</body>
</html>
        <%@page import="java.sql.*" %>
<%
    if("SignUp".equals(request.getParameter("SignUp")))
            {
String mysqlconnector="jdbc:mysql://localhost:3306/onlinebookingdbms2";
Connection con=null;
Statement stmt=null;
String name=null;
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement();
	 String v1=request.getParameter("UserName");
	 String v2=request.getParameter("Password");
         String v3=request.getParameter("ConfirmPassword");
         String v4=request.getParameter("UserType");
          v4="standard";
         if(v2==v3)
        {
	 if(v1!=null&&v2!=null&&v4!=null)
         {
           
          
stmt.executeUpdate("insert into login values('"+v1+"','"+v2+"','"+v4+"')");
 out.println("<h1>Success</h>");
         }
        }
        else if(v2!=v3)
        {
        out.println("<h1>Password do not much</h1>");
        }
            }
%>
<%="data inserted" %>

    </body>
</html>
