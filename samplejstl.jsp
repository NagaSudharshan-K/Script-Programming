<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<html>
<head> <title>Core Tag Example</title> </head>
<body>
<c:set var="salary" value="${100000}"/>
<c:choose>
<c:when test="${salary <= 1000}">
Salary is not good.
</c:when>
<c:when test="${salary > 10000}">
Salary is very good.
</c:when>
<c:otherwise>
Salary is undetermined...
</c:otherwise>
</c:choose>
</body>
</html>