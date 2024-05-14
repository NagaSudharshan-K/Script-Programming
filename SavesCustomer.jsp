<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedWriter.*" %>
<%@ page import="java.io.FileWriter.*" %>

<%@ page import="java.io.*" %>

<!DOCTYPE html >
<html  >
    <head>
        <title>Create New Customer</title>
<%
   //get information (replace apostrophes with double apostrophes to prevent SQL injection attacks)
    String name = request.getParameter("name");
    String address = request.getParameter("address");
       String message="";      
    try {
        
        FileWriter writer = new FileWriter("C:/xampp/tomcat/webapps/ROOT/exampractice/hello.txt", true);
        BufferedWriter bufferedWriter = new BufferedWriter(writer);
        bufferedWriter.append(name + address);
        bufferedWriter.close();  
		message="Success";		
        
    } catch (Exception ex){
        message = "Error occurred while trying to connect to database: " + ex.getMessage();
    }        

%>      
        <script type="text/javascript">//<![CDATA[
            window.onload = function () {
                top.frames["displayFrame"].saveResult("<%= message %>");        
            }
        //]]>
        </script>     
    </head>
    <body>
        
    </body>
</html>
