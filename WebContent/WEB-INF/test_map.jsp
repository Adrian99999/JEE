<%@ page import="java.util.Map, java.util.HashMap" %>
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
	<%
		Map<String, String> aliments = new HashMap<String, String>();
		aliments.put( "pomme","fruit" );
	    aliments.put( "carotte","légume" );
	    aliments.put( "boeuf","viande" );
	    aliments.put( "aubergine","légume" );
	    request.setAttribute("aliments", aliments);
	%>
	${ aliments.pomme }  <br>
	${ aliments.carotte } <br>
	${ aliments.boeuf } <br>
</p>
</body>
</html>