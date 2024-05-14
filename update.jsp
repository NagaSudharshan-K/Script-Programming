<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
    String Name = request.getParameter("name");
    String Number = request.getParameter("number");
    try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/dbjsp","root","");
            PreparedStatement pst = conn.prepareStatement("INSERT INTO Contacts(Name, Number) VALUES (?, ?)");
            pst.setString(1, Name);
            int numberValue = Integer.parseInt(Number);
            pst.setInt(2, numberValue);
            pst.executeUpdate();
    }
   catch (Exception e) {
            out.println(e);
        }
    
%>
