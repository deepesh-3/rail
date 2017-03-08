<%-- 
    Document   : change
    Created on : 24-Oct-2016, 14:16:45
    Author     : Deepesh Dwivedi
--%>

<%@ page import="java.sql.*"%>
<%@ page import="javax.servlet.*"%>
<%@ page import="javax.servlet.http.*"%>
<%@ page import="oracle.jdbc.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <% 
                 Class.forName("oracle.jdbc.OracleDriver");
        try{
     Connection  conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","tiger");
       String id=request.getParameter("id");
       String pass=request.getParameter("pass");
       String q="Update passenger Set password='"+pass+"' WHERE id="+id;
       Statement stmt=conn.createStatement();
       ResultSet rs=stmt.executeQuery(q);
       response.sendRedirect("r1.html");
        }catch(Exception e){
            System.out.println(e);
            
        }%>
    </body>
</html>
