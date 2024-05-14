
<%@ page import = "java.io.*"%>
<%@ page import = "java.io.BufferedWriter.*"%>
<%@ page import = "java.io.FileWriter.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <%
    String Name= request.getParameter("Name");
    String Number = request.getParameter("Mobile");
    String msg = "";
    try{
        FileWriter fw = new FileWriter("C:/xampp/tomcat/webapps/ROOT/exampractice/hello.txt",true);
        BufferedWriter bw = new BufferedWriter(fw);
        bw.append(Name + " " + Number);
        msg = "success";
        bw.close();
    }
    catch(Exception e)
    {
        out.println(e);
    }
%>
    <script>
        window.onload = function()
        {
            top.frames['frame1'].afterwrite("<%= msg %>");
        }
    </script>
</head>
<body>

</body>
</html>