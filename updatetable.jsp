<!DOCTYPE html>
<html>

<head>
    <meta>
    <title>new registration</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#update").click(function (event) {
                //event.preventDefault(); // prevent default form submission

                var nameValue = $("input#name1").val();
                var numberValue = $("input#number1").val();
                
                // Validate that 'Name' is not empty
                //if (!nameValue.trim()) {
                  //  alert("Name cannot be empty");
                    //return;
                //}

                $.ajax({
                    url: "update.jsp",
                    type: "post",
                    data: {
                        name: nameValue,
                        number: numberValue
                    },
                    success: function (response) {
                        document.writeln("Updated! " + nameValue + " " + numberValue);
                    }
                    //error: function (xhr, status, error) {
                        // Handle errors, if needed
                   // }
                });
            });
        });
    </script>
</head>

<body>
    <form method="post">
        <input type="text" name="name1" id="name1">
        <input type="text" id="number1" name="number1">
        <input type="submit" value="Update Database" id="update">
    </form>
</body>

</html>