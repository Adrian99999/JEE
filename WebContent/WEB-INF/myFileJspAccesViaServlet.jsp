<%@page import="bean.MyBean"%>

<%@ page language="java" 
	contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My page jsp</title>
</head>
<body>
	<h1>Acces via servlet a la page jsp</h1>
	
		<%-- Ceci est un commentaire JSP, non visible dans la page HTML finale.  --%>
        <!-- Ceci est un simple commentaire HTML. -->
	<%-- Cette balise vous permet de déclarer une variable à l'intérieur d'une JSP --%>
	<%! String chaine = "Salut les zéros.";  %>
	
	<%
		String attributRecuViaRequest =(String) request.getAttribute("attributeMessage");
		out.println(attributRecuViaRequest);
	%>
	
	<h1>Bean : </h1>
	
	<%
		MyBean myBean = (MyBean) request.getAttribute("myBean");
		out.println("Nom du bean : "+ myBean.getNom() +  " prenom du bean : "+myBean.getPrenom());
	%>
	
	<h1>Test ArrayList</h1>
	<jsp:include page="test_inc.jsp"/>
	
	
	<h1>Acceder au bean avec une action standart jsp</h1>
	<%-- L'action suivante récupère un bean de type Coyote et nommé "coyote" dans la portée requête s'il existe, ou en crée un sinon. --%>
	<jsp:useBean id="myBeanJsp" class="bean.MyBean" scope="request">
		<%
			myBeanJsp.setNom("nom du bean attribue avec jsp est avec du code java");
			out.println(" affichage avec java : "+ myBeanJsp.getNom());
		%>
	</jsp:useBean>
	
	<h1> Modification et affichage ave jsp </h1>
	<jsp:getProperty property="nom" name="myBeanJsp"/>
	
	<jsp:setProperty property="nom" name="myBeanJsp" value="nom modifie avec jsp"/>
	<br>
	<jsp:getProperty property="nom" name="myBeanJsp"/>
	
	<%-- Le forwarding vers une page de l'application fonctionne par URL relative : --%>
	<jsp:forward page="/FileJspAccesDirect.jsp" />
	
</body>
</html>