<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>

<!DOCTYPE
<html>
    <head>
        <title>Get Details</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script>
            $(document).ready(function(){
                $("#submit").click(function(){
                    $.ajax({
                        url:"postdetails.jsp",
                        type:"post",
                        data:{
                            Name:$("#Name").val(),
                            Number:$("#Number").val()
                        }
                    });
                });
            });
        </script>
    </head>
    <body>
        <form method="post">  
            Name:<input type="text" name="Name" id="Name">
            Number: <input type="text" name="Number" id="Number">
            <input type="submit" value="Upload Details" id="submit">
        </form>
    </body>