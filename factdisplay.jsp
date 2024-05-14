<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script>
        function calculate()
        {
            var val =  document.getElementById("number").value;
            top.frames['hidden'].location="calculatefact.jsp?Number="+val;
        }
        function displayresult(msg)
        {
            document.getElementById("answer").innerHTML=msg;
        }
    </script>
</head>
<body>
    Number:<input type="text" id="number" name="number">
    <input type="submit" onclick="calculate()">
    <p id="answer"></p>
</body>
</html>