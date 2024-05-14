<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>  

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost/dbjsp" user="root" password=""/>
    <sql:query dataSource="${db}" var="rs">
        Select * from Contacts;
    </sql:query>
    <c:forEach items="${rs.rows}" var="table">
        <c:out value="${table.Name}"/>
        <c.out value="${table.Number}"/>
    </c:forEach>
</body>
</html>