<%-- 
    Document   : style-demo
    Created on : May 5, 2018, 4:17:26 AM
    Author     : user
--%>

<%@page import="javax.script.ScriptEngine"%>
<%@page import="javax.script.ScriptEngineManager"%>
<%@page import="com.au.bookroom.assign_room"%>
<%@page import="com.au.bookroom.roomdesc"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up Here</title>
        <script type="text/javascript">
       function reserved()
       {
           if(document.myform.hidden.value==="1")
           {
               already reserved();
           }
       }
        </script>
    </head>
    <body>
       
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Sign Up</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
</head>
    <body id="top">
            <%@page import="java.sql.*" %>
<%
    int result=0;
   roomdesc r=new roomdesc();
       r.rd();
String s1=r.a[0];
String s2=r.a[1];
String s3=r.a[2];
//String s4=r.a[3];

String d1=r.b[0];
String d2=r.b[1];
String d3=r.b[2];
//String d4=r.b[3];
 
           
             if("Reserve1".equals(request.getParameter("reserve1")))
             {
               if(s3.equals("not reserved"))
               { 
                   String updatestr="update room set status='reserved' WHERE Rid=1";
                   assign_room a=new assign_room();
                   a.assign(updatestr);
                   response.sendRedirect("AssignRoom.jsp");
             
               }
               else if(s3.equals("reserved"))
               {
                  // String updatestr="update room set status='not reserved' WHERE Rid=1";
                  // assign_room a=new assign_room();
                  // a.assign(updatestr);
                 response.sendRedirect("Already reserved.jsp");
                
                 
               result=1;
                  
               }
            
             }
                  
                 if("Reserve2".equals(request.getParameter("reserve2")))
             {
               if(d3.equals("not reserved"))
               { 
                   String updatestr="update room set status='reserved' WHERE Rid=2";
                   assign_room a=new assign_room();
                   a.assign(updatestr);
              response.sendRedirect("RoomBooking.jsp");
               }
               else if(d3.equals("reserved"))
               {
                   String updatestr="update room set status='not reserved' WHERE Rid=2";
                   assign_room a=new assign_room();
                   a.assign(updatestr);
                   response.sendRedirect("Already reserved.jsp"); 
               result=1;
                   // response.sendRedirect("RoomBooking.jsp");
               }
            
             }
           
 %>
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
     
      
     
      
      <h2>Choose Your favorite class here!!!</h2>
      <div id="respond">
        <form action="#" method="post">
            <img src="../images/demo/240x90.gif" width="350" height="120" alt="240x90"/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="Reserve1" name="reserve1" onclick="return reserved()"/>
                
    <table border="1">
       
        <tbody>
            <tr>
                <td>Room id</td>
                <td name="rid"><%=s1 %></td>
            </tr>
            <tr>
                <td>Room Number</td>
                <td name="rno"><%=s2 %></td>
            </tr>
            <tr>
                <td>Block Number</td>
                <td name="bno"><%=s3 %></td>
            </tr>
        </tbody>
    </table><br><br>
            <%
         
            %>   
            <img src="../images/demo/buildings1.jpg" width="350" height="120" alt="buildings1"/>
            <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="Reserve2" name="reserve2" /><br><table border="1">
       
        <tbody>
            <tr>
                <td>Room id</td>
                <td><%=d1%></td>
            </tr>
            <tr>
                <td>Room Number</td>
                <td><%=d2 %></td>
            </tr>
            <tr>
                <td>Block Number</td>
                <td><%=d3 %></td>
            </tr>
        </tbody>
    </table><br>
                  
<img src="../images/demo/240x90.gif" width="350" height="120" alt="240x90"/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   
    <a href="">Reserve this class</a><br><br>
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
    <form name="myform2" action="RoomBooking.jsp" method="post">
        <input type="hidden" name="hidden" value="<%=result %>" />
    </form>
</body>
</html>

    </body>
           
</html>
