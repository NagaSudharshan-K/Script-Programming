<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html >
<html  >
    <head>
        <title>Get Customer Data</title>
        <script type="text/javascript">
            window.onload = function () {
                var divInfoToReturn = document.getElementById("divInfoToReturn");
				//document.write("gg");
                top.frames["displayFrame"].displayCustomerInfo(divInfoToReturn.innerHTML);        
            };
        
        </script>    
    </head>
    <body>
<%!
   String getCustomerData(String username){                
               
			   if(username.length>8)
				   x="Valid"
			   else if (username.length<8 )
				   x="The characters must be 8 character long";
			   
			   return x;			
        }
        
       
%>
<%
        String username = request.getParameter("username1");
		String password = request.getParameter("password");

        int id = -1;
		String  message ;

        try {
           
			
            message = getData(username);
			 
			 
        } catch (Exception ex) {
            message = 0;
        }
%>
<p>jhj</p>
        <div id="divInfoToReturn"><%= message %></div>
		<p>sdda</p>
    </body>
</html>
