<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <title>Create New Customer</title>
    <script type="text/javascript">
           
        function saveResult(sMessage) {
            var divStatus = document.getElementById("divStatus");
            divStatus.innerHTML = "Request completed: " + sMessage;            
        }
    
    </script>    
</head>
<body>
    <form method="post" action="SaveCustomer2.jsp" target="hiddenFrame">
    <p>Enter customer information to be saved:</p>
    <p>Customer Name: <input type="text" name="txtName" value="" /><br />
   
    <p><input type="submit" value="Save Customer Info" /></p>
    </form>
	<iframe src="about:blank" name="hiddenFrame" style="display: none"></iframe>
    <div id="divStatus"></div>
</body>
</html>
