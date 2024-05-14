<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.BufferedWriter.*" %>
<%@ page import="java.io.FileWriter.*" %>

<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%
        String msg="";
        String Name= request.getParameter("Name");
        String Age = request.getParameter("Age");
        try{
            
            FileWriter fw = new FileWriter("C:/xampp/tomcat/webapps/ROOT/exampractice/hello.txt",true);
            BufferedWriter bf = new BufferedWriter(fw);
            bf.append(Name+Age);
            msg = "Success";
            bf.close();
        }
        catch(Exception e)
        {
            out.println(e);
        }
    %>
    <script>
        window.onload= function(){
            top.frames["displayframe"].result("<%= msg %>");
        }
    </script>
</head>
<body>
    
</body>
</html>