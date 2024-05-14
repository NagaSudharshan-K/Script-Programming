<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE
<html>
    <head>
        <title>Get Details</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            function getNumber()
            {
                var Name = document.getElementById("Name").value;
                $.get("getNumber.jsp?Name="+Name,response);
            }
            function response(stext,sstatus)
            {
                if(sstatus=="success")
                    $("#result").html("<h1>"+stext+"</h1>")
            }
        </script>
    </head>
    <body>
        <form onsubmit="event.preventDefault();">
            Name:<input type="text" name="Name" id="Name">
            <input type="submit" value="Get Number" onclick="getNumber()">
            <br><div id="result"></div>
        </form>
    </body>