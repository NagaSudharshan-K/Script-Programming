<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Customer Account Information</title>
    <script type="text/javascript">
        function requestCustomerInfo() {
            var sName = document.getElementById("txtCustomerName").value;
			var spwd = document.getElementById("txtPassword").value;
		
   // var url="ht.jsp?username1="+username +"&email1="+email;
 		top.frames["hiddenFrame"].location="faact.jsp?username1=" + sName ;

		
        }
        
        function displayCustomerInfo(sText) {
            var divCustomerInfo = document.getElementById("divCustomerInfo");
            divCustomerInfo.innerHTML = sText;
        }
  
    </script>
</head>
<body>
    <p>Enter a number to find factorial:</p>
    <p>UserName: <input type="text" id="txtCustomerName" value="" /></p>
	<p>Password: <input type="text" id="txtPassword" value="" /></p>

    <p><input type="button" value`="Get Customer Info" onclick="requestCustomerInfo()" /></p>
    <div id="divCustomerInfo"></div>
</body>
</html>
<!--The second line creates the
URL and assigns it to the hidden frame. To get a reference 
to the hidden frame, you first need to access
the topmost window of the browser using the top object. 
That object has a frames array, within which
you can find the hidden frame.
 Since each frame is just another window object, you can set its location
to the desired URL.-->