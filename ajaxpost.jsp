<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        function write()
        {
            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function()
            {
                if(xhttp.readyState==4 && xhttp.status==200)
                document.getElementById("res").innerHTML=xhttp.responseText;
            };
            var url = "ajaxwrite.jsp?Name="+document.getElementById("Name").value;
            xhttp.open("POST",url,true);
            xhttp.send();
        }
    </script>
</head>
<body>
    Name:<input type="text" id="Name">
    <input type="submit" onclick="write()">
</body>
</html>