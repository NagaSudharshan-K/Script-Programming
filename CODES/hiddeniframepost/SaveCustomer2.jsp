<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
    <head>
        <title>Create New Customer</title>
<%
    //get information (replace apostrophes with double apostrophes to prevent SQL injection attacks)
    String name = request.getParameter("txtName");
    String message="";    

    try {
           
   
        
        FileWriter writer = new FileWriter("D://ss1.txt", true);
        BufferedWriter bufferedWriter = new BufferedWriter(writer);
        bufferedWriter.append(name );
        bufferedWriter.close();  
		message="Success";		
        
    } catch (Exception ex){
        message = "Error occurred while trying to connect to database: " ;
    }        
            
       

%>      
        <script type="text/javascript">//<![CDATA[
            window.onload = function () {
                parent.saveResult("<%= message %>");        
            }
        //]]>
        </script>     
    </head>
    <body>
        
    </body>
</html>
