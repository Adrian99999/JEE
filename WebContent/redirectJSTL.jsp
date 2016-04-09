<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="<c:url value="inFromRedirect.jsp">
			<c:param name="nom" value="Adrian"/>
			<c:param name="prenom" value="Pinzaru"/>
		</c:url>">
					Redirect avec paramentres dans le url </a>
		<br>	
</body>
</html>