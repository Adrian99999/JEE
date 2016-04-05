<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test des objects implicite EL</title>
</head>
<body>
	<%
		String paramLangue = request.getParameter("langue");
		out.println("langue : " +paramLangue);
		
		out.print("<br>");
		
		String paramArticle = request.getParameter("article");
		out.println("Article : " + paramArticle);
	%>
	<h1>Acheder via EL aux parametres</h1>
	<p>
		Langue : ${ paramValues.langue[1] } <br>
		Article : ${ param.article }
	</p>
</body>
</html>