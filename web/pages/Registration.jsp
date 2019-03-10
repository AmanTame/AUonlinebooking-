<%-- 
    Document   : full-width
    Created on : 02-May-2018, 16:45:00
    Author     : zewd
--%>

<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*"%>

<%@page import="com.au.bookroom.Registeration2"%>
<%@page import="javax.swing.JOptionPane"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
    </head>
    <body>
        <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Ambo University</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<link rel="stylesheet" href="../layout/styles/layout.css" type="text/css" />
</head>
    <body id="top" onload="DisplayResult()">
<div class="wrapper col1">
  <div id="head">
    <h1><a href="../Home.jsp">Ambo University</a></h1>
    <%!
        public class SMTPAuthenticator extends Authenticator
{
public PasswordAuthentication getPasswordAuthentication()
{
return new PasswordAuthentication("trustever.jc", "'Love to Laugh");
}
}
%>
<%
    
   String m_text=new String();
    int result=0;
    if("Register".equals(request.getParameter("Register")))
    {
    String d_uname="enter your email here";
    String d_password="enter your email password here";
    String d_host="smtp.gmail.com";
    int d_port=465;
    
    String m_to=new String();
    String m_from="your email";
    String m_Subject=new String();
     
   
    m_text="<h1>Welcome to Ambo University Booking Website please \n fill the following four digit no in the blank and confirm </h2>\n <br><br>";

           Double x=Math.random();
           Double y=x.doubleValue()*10000;
           int z=y.intValue();
           m_text=m_text.concat(Integer.toString(z));
            
out.println(m_text);
if(request.getParameter("Email")!=null)
{
m_to=request.getParameter("Email");
}

m_Subject="AU Booking Confirmation message";



  
//create properties    
Properties props=new Properties();
//create session obj
SMTPAuthenticator auth=new SMTPAuthenticator();
Session ses=Session.getInstance(props,auth);
//create mime style message
MimeMessage msg=new MimeMessage(ses);
msg.setContent(m_text,"text/html");
msg.setSubject(m_Subject);
msg.setFrom(new InternetAddress(m_from));
msg.addRecipient(Message.RecipientType.TO, new InternetAddress(m_to));

try{

Transport Tran=ses.getTransport("smtps");
Tran.connect(d_host, d_port, d_uname, d_password);
Tran.sendMessage(msg,msg.getAllRecipients());
Tran.close();
result=1;
}
catch(Exception e)
{
out.println(e);
}
    
}

        String EnterCode=request.getParameter("EnterCode");
        if("Confirm".equals(request.getParameter("Confirm")))
     {
        if(m_text==EnterCode)
        {
     
      
        try
         {
         String CustomerId=request.getParameter("CustomerId");
	 String FirstName=request.getParameter("FirstName");
         String LastName=request.getParameter("LastName");
         String Tel=request.getParameter("Tel");
	 String Email=request.getParameter("Email");
         String Location=request.getParameter("Location");
       
	          
        Registeration2 r=new Registeration2();
        r.register_customer(CustomerId, FirstName, LastName, Tel, Email, Location);
         result=2;      
         }
         catch(Exception e){}
         out.println(EnterCode);
     
        
     }
     else
        {
        out.println("enter code correctly");
        }
     }
        %>

    <p>Register Here</p>
    <div id="topnav">
      <ul>
          <li><a href="../Home.jsp">Home</a></li>
        
        <li><a class="active" href="Registration.jsp">Register</a></li>
        
        
      </ul>
    </div>
    
  </div>
</div>
<div class="wrapper col2">
  <div id="breadcrumb">
    
  </div>
</div>
<div class="wrapper col4">
  <div id="container">
   
      <form name="myform" action="Registration.jsp" method="post">
        Customer ID<h1><input type="text" name="CustomerId" value="" /></h1>
        First Name<h1><input type="text" name="FirstName" value="" /></h1>
        Last Name <h2><input type="text" name="LastName" value="" /></h2>
        Tel<h4><input type="text" name="Tel" value="" /></h4>
        Email<h5><input type="text" name="Email" value="" /></h5>
        Location<h6><input type="text" name="Location" value="" /></h6>
     
     <input type="submit"  name="Register" value="Register" /> <br><br><br>
     Enter Code Here:<input type="text" name="EnterCode" value=""/><br><br>
           
            <a href="RoomBooking.jsp" name="Confirm" values="Confirm">Click Here to complete registration</a>
             </table>
            <input type="hidden" name="hidden" value="<%= result%>" size="50" />
            
           
            
            
               
       
            <script language="javascript">
                function DisplayResult()
                {
                   
                    if(document.myform.hidden.value==="1")
                    {
                     alert("Mail was Sent!");   
                     
                    }
                   
               }
       
       </script>
       
       
 
           
    </form>
 
       </body>
</html>
