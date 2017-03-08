<%-- 
    Document   : railway
    Created on : 21-Oct-2016, 13:50:02
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
        
    </head>
    <%
        Class.forName("oracle.jdbc.OracleDriver");
        try{
     Connection  conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","SYSTEM","tiger");
       String id=request.getParameter("id");
       String pass=request.getParameter("pass");
           String q="SELECT * FROM PASSENGER WHERE ID="+id+" AND PASSWORD='"+pass+"'";

       Statement stmt=conn.createStatement();
       
        
            // get data of form
                        
           
            // set the values for parameters
            
            ResultSet rs = stmt.executeQuery(q);
           while (rs.next())
            {
                
                
                
            
      
    %>
    <body>
        <h1>HELLO <%=rs.getString("NAME")%> </h1>
    <center> <table border="1">
            <tr><td>NAME</td><td> <%= rs.getString("Name")%>  </td></tr>
            <tr><td>ID</td><td> <%= rs.getString("ID")%>  </td></tr>
            
        </table> </center>
    </body>
    <% }}catch(Exception e){System.out.println(e);} %>


</html>
