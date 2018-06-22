<%-- 
    Document   : full-width
    Created on : 02-May-2018, 16:45:00
    Author     : zewd
--%>

<%@page import="com.au.bookroom.*"%>

<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Assign Date</title>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ambo University</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
</head>
<body id="top">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="../Home.jsp">Ambo University</a></h1>
    <p>Register Here</p>
    <div id="topnav">
      <ul>
          <li><a href="../Home.jsp">Home</a></li>
        
        <li><a class="active" href="full-width.jsp">Membership</a></li>
        
        
      </ul>
    </div>
    
  </div>
</div>
<div class="wrapper col2">

<div class="wrapper col4">
  <div id="container">
   
      <form action="AssignRoom.jsp" method="post">
         StartDate: <input type="text" name="StartDate" value="" size="30" /><br>upto....<br>
          EndDate:<input type="text" name="EndDate" value="" size="30" />
    <input type="submit"  name="sub" value="Assign" /> 
    </form>
  
       </body>
</html>
