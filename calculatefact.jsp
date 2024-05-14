<%@ page import="java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%
    int msg = -1;
    int Number =0;
    try{
        Number = Integer.parseInt(request.getParameter("Number"));
        msg = 1;
        for(int i=1;i<=Number;i++)
        msg = msg*i;
    }
    catch(Exception e)
    {out.println(e);}
    %>
    <script>
        window.onload = function()
        {
            top.frames['factdisplay'].displayresult("<%= msg %>");
        }
    </script>
</head>
<body>
    
</body>
</html>