<%@ page isErrorPage="true" %>  
 <h3>Sorry an exception occured!</h3>  
  Exception is: <%= exception %>  
<%--
In JSP, the isErrorPage attribute of page directive is used to specify whether the current page could be displayed as an error page for another JSP page. We could set the value of isErrorPage to either true or false.
--%>

out.println("<h3>Sorry an exception occured!</h3>")