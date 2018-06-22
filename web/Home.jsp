<%-- 
    Document   : Home
    Created on : 02-May-2018, 14:07:17
    Author     : zewd
--%>

<%@page import="com.au.bookroom.*"%>

<%@page import="javax.swing.JOptionPane"%>

<%@page import="java.awt.Window"%>
<%@page import="com.au.bookroom.login"%>
<%@page import="java.lang.String"%>

<%@page import="com.au.onlinebooking.registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
       
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ambo University</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="layout/styles/layout.css" type="text/css" />
</head>
    <body id="top" onload="DisplayResult()">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="Home.jsp">AU Online Booking</a></h1>
    <p><i>Welcome</i></p>
    <div id="topnav">
  
    </div>
  </div>
</div>
<div class="wrapper col2">
  <div id="gallery">
    <ul>
       
      <li class="placeholder" style="background-image:url(images/demo/Gate_1.jpg);" width="50" height="50">Image Holder</li>
      <form action="Home.jsp" method="post" name="form3">
          
          
          
          
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; UseName:<input type="text" name="username" value="" size="30"/><br><br>
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:<input type="password" name="password" value="" size="30"/><br><br>
                  
                  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <input type="submit" name="Signin" value="Signin" onclick="DisplayResult()"/>&nbsp;&nbsp;&nbsp;&nbsp;
                  <a href="pages/Create Account.jsp">Sign Up</a> <br>
            
           
             

            
          
           
            
        </form>
      <%@page import="java.sql.*" %>
<%
  int result=0;
  if("Signin".equals(request.getParameter("Signin")))
{
 try
    {
        
/* String mysqlconnector="jdbc:mysql://localhost:3306/onlinebookingdbms2";
Connection con=null;
Statement stmt=null;
String name=null;
	 Class.forName("com.mysql.jdbc.Driver");
	 con=DriverManager.getConnection(mysqlconnector,"root","");
	 stmt=con.createStatement(); */

     String v1=request.getParameter("username");
	 String v2=request.getParameter("password");
         //out.println(v1);
        // out.println(v2);
        String v3="admin";
	 if(v1!=null&&v2!=null)
         {
        login login1=new login();
Boolean exist=login1.usernmeAndPassword(v1, v2, v3);
//ResultSet rs=stmt.executeQuery("select * from login where UserName='"+v1+"' and Password='"+v2+"' and UserType='"+v3+"'");

               if(exist==true)
 
                 {
                    response.sendRedirect("pages/Registration.jsp");
                 }
                else
                 {
                    response.sendRedirect("Home.jsp");
                   result=1;
                 }
         }
       
    }
         catch(Exception ex)
                 {
                 
                 }
 }
   %>
      

      <li><a class="swap" style="background-image:url(images/demo/lecturers.jpg);" href="#gallery"><strong>Services</strong><span><img src="images/demo/lecturers_1.jpg" alt="" /></span></a></li>
      <li><a class="swap" style="background-image:url(images/demo/Grraduation.jpg);" href="#gallery"><strong>Products</strong><span><img src="images/demo/Grraduation1.jpg" alt="" /></span></a></li>
       
      <li class="last"><a class="swap" style="background-image:url(images/demo/buildings.jpg);" href="#gallery"><strong>Company</strong><span><img src="images/demo/buildings1.jpg" alt="" /></span></a></li>
    </ul>
    <div class="clear"></div>
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
    <div id="content">
      <h1>About Ambo University </h1>
      <form name="myform1" method="POST">
          <input type="hidden" name="hidden" value= <%= result %> >
          
      </form>
<p>Ambo University is dedicated to top quality education and research. It has both intra-university research for the advancement of science and technology and outreach programs through which the community of Ethiopia benefits. 
    The motto of the university is "learning for change" referring to research ways in which the community best benefits and reformation of the country  from poor house to power house.</p>
<p>Website</p>
<p><a href="http://www.ambou.edu.et"> Go to AU Website</a></p><br>
</div>
</body>
</html>
   <script language="javascript">
                function DisplayResult()
                {
                   
                    if(document.myform.hidden.value==="1")
                    {
                     alert("Incorrect password or user name!");   
                     
                    }
                    else
                    {
                     alert("Incorrect password or user name!");   
                     
                    }
               }
       
       </script>
    </body>
</html>
