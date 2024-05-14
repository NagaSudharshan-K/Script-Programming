<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" >
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        function afterwrite(res)
        {
            document.getElementById("result").innerHTML=res;
        }
    </script>
</head>
<body>
    <form method="post" action="postframe1.jsp" target="hiddenframe2">
        Name:<input type="text" name="Name">
        Mobile : <input type="text" name="Mobile">
        <input type="submit" value="Write File">
    </form>
    <p id="result"></p>
</body>
</html>