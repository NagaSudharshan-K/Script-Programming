<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE
<html>
    <head>
        <title>Get Details</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            function getdetails()
            {
                var Name = $("#name").val();
                $.get("get.jsp?Name="+Name,Result);
            }
            function Result(sText,sStatus)
            {
                if(sStatus=="success")
                    $("#res").html(sText)
            }
        </script>
    </head>
        <body>
            <form onsubmit="event.preventDefault();">
                Name:<input type="text" name="name" id="name">
                <input type="submit" value="Get details" onclick="getdetails()">
                <div id="res"></div>
            </form>
        </body>
</html>
