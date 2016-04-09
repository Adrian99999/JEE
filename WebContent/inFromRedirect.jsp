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
	${param.nom }
	<br>
	
	${param.prenom }
	
	<%--
	<c:redirect url="http://www.siteduzero.com">
  		<c:param name="mascotte" value="zozor"/>
  		<c:param name="langue" value="fr"/>
	</c:redirect>
	 --%>
	 <br>
	 Import de la page redirectJSTL.jsp
	<c:import url="redirectJSTL.jsp"></c:import>
	
	<br>
	<%-- Les attributs valables pour <c:url/> le sont aussi pour la redirection. Ici par exemple, l'utilisation de paramètres 
	<c:import url="footer.jsp">
		  <c:param name="design" value="bleu"/>
		</c:import>
	
	--%>
		
</body>
</html>