<%@page contentType="text/html"%>
<%@page pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
<head>
    <title>Hidden Frame POST Example</title>
</head>
<frameset rows="100%,0" style="border: 0px">
    <frame name="displayFrame" src="DataEntry.jsp" noresize="noresize" style="border: 0px" />
    <frame name="hiddenFrame" src="about:blank" noresize="noresize" style="border: 0px" />
</frameset>
</html>
