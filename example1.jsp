<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    Name:<input type="text" name="name" value="1" id="name1">
    Name:<input type="text" name="name" value="3" id="name2">
    Name:<input type="text" name="name" value="2" id="name3">
    
    <c:forEach items="${paramValues.name}" var="i">
        <c:out value="${i}"></c:out>
    </c:forEach>
    
    <c:set var="sal" value="${2000}"/>
    
    <c:if test="${sal>1000}">
        <c:out value="${sal}"/>
        <h1>happy</h1>
    </c:if>

    ${11-2}
    ${'gf'}
    ${2 eq 2}
</body>
</html>
