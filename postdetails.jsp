<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String Name = request.getParameter("Name");
    int Number = Integer.parseInt(request.getParameter("Number"));
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dbjsp","root","");
        PreparedStatement pst = conn.prepareStatement("Insert into Contacts(Name,Number)VALUES(?,?);");
        pst.setString(1,Name);
        pst.setInt(2,Number);
        pst.executeUpdate();
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>