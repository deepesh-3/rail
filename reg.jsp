<%-- 
    Document   : reg
    Created on : 24-Oct-2016, 12:57:24
    Author     : Deepesh Dwivedi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%><%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="oracle.jdbc.*"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
     
    </head>
    <body>
        <% 
                 Class.forName("oracle.jdbc.OracleDriver");
        try{
     Connection  conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","tiger");
       String id=request.getParameter("id");
       String password=request.getParameter("pass");
       String name=request.getParameter("name");
       String query="Insert into passenger values('"+id+"','"+name+"','"+password+"')" ;
         Statement stmt=conn.createStatement();
         ResultSet rs=stmt.executeQuery(query);%>
         <h1> Congragulations YOU ARE REGISTERED</h1>
         <%response.sendRedirect("r1.html");
         }catch(Exception e){
System.out.println(e) ;
}
         
        %>
    </body>
</html>
