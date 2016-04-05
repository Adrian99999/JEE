<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>
		Récupération du bean: 
		<jsp:useBean id="myBean" class="bean.MyBean" scope="request"></jsp:useBean>
		Nom : <jsp:getProperty property="nom" name="myBean"/>
		<br>
		Prenom  <jsp:getProperty property="prenom" name="myBean"/>
	</p>
</body>
</html>