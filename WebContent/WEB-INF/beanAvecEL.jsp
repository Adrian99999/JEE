<%@ page import="java.util.List" %>
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
		Parametre recu avec GET : 
			<br>
				Attribut recu : ${ requestScope.attributeMessage }
			<br>
				Parametre recu via GET : ${param.auteur }
			<br>
				Récuperation du bean: 
			<br>
				Nom : ${ myBean.nom }
			<br>
				Prenom : ${ myBean.prenom }
	</p>
	
	<p>
		Récuperation de la liste:
		 <br>
		 	<%
		 		List<Integer> liste = (List<Integer>) request.getAttribute("liste");
		 		for(Integer i : liste)
		 		{
		 			out.println(i + " : ");
		 		}
		 	%>
	</p>
	 <p>
            Récupération du jour du mois :
            <%
            Integer jourDuMois = (Integer) request.getAttribute( "jour" );
            if ( jourDuMois % 2 == 0 ){
                out.println("Jour pair : " + jourDuMois);
            } else {
                out.println("Jour impair : " + jourDuMois);
            }
            %>
        </p>
</body>
</html>