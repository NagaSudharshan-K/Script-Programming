<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String name = request.getParameter("txtName");
    String address = request.getParameter("txtAddress");
    String city = request.getParameter("txtCity");
    String state = request.getParameter("txtState");
    String zipCode = request.getParameter("txtZipCode");
    String phone = request.getParameter("txtPhone");
    String email = request.getParameter("txtEmail");  
	String message="";
try
{

Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "");
Statement st=conn.createStatement();
st.executeUpdate("insert into customers2(Name,Address,City,State,Zip,Phone,Email)values('"+name+"','"+address+"','"+city+"','"+state+"','"+zipCode+"','"+phone+"','"+email+"')");
//out.println("Data is successfully inserted!");



}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>