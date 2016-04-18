<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Afficher un fichier xml avec une feuille de style xsl</h1>
	
	<c:import url="feuilleDeStyle.xsl" varReader="xslFile">
	<c:import url="monDocument.xml" varReader="xmlFile">	
		<x:transform doc="${xmlFile }" xslt="${xslFile }"></x:transform>
	</c:import> 	
	</c:import>
	
</body>
</html>