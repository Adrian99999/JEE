<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:out value="test affichege" />
	<br>
	<!--<c:out value="${'a' < 'b' }"></c:out>-->
	<br>
	<c:out value="<h1>Paragraphe</h1>" escapeXml="false"></c:out>
	<c:out value="<h1>Paragraphe</h1>" ></c:out>
	<br>
	
	<%-- Cette balise affichera le mot 'test' si le bean n'existe pas : --%>
	<c:out value="${bean}">
    	test
	</c:out>

	<%-- Elle peut également s'écrire sous cette forme : --%>
	<c:out value="${bean}" default="test" />
	
		<%-- Cette balise met l'expression "Salut les zéros !" dans l'attribut "message" de la requête : --%>
		<c:set var="message" value="Salut les zéros !" scope="request" />
	
		<%-- Et est l'équivalent du scriplet Java suivant : 
			<% request.setAttribute( "message", "Salut les zéros !" ); %>
		--%> 
		   
		<p>Affichage de la variable</p>
		<c:out value="${requestScope.message }"></c:out>
		
		<c:set var="locale" scope="session">
   			<c:out value="${param.lang}" default="FR"/>
		</c:set>
		
		<%-- Crée un objet de type String --%>
		<c:set scope="session" var="description" value="Je suis une loutre." />
	<br>
		<c:out value="la valeur recupere du session : ${sessionScope.description }"></c:out>
	<br>
		<p>
			<!-- Créeation d'un object BEAN -->
			<jsp:useBean id="myBean" class="bean.MyBean" scope="session"></jsp:useBean>
			<!-- Définir ou modifie la propriete "Prenom" du bean "myBean" -->
			<c:set target="${myBean }" property="prenom" value="Adrian"></c:set>
			<c:out value="${myBean.prenom }"></c:out>
		</p>
		<p>
		<!-- Définir ou modifier la propriété 'prenom' du bean 'coyote' via le corps de la balise -->
			<c:set target="${myBean}" property="prenom">
			   Wile E.
			</c:set>
			
			Le prenom du biean modifie : <c:out value="${myBean.prenom }"></c:out>
		</p>
		<h1>Les testes avec JSTL</h1>
		
		<p>
			<c:if test="${12 > 3 }" var="maVar">
				Ce test est vrai
			</c:if>
			<br>
			La valeur de la variable de la condition est : <c:out value="${maVar }"></c:out>
		</p>
		
		<h1>Boucle en JSTL</h1>
		<%-- Boucle calculant le cube des entiers de 0 à 7 et les affichant dans un tableau HTML --%>
		Tableau afficché avec scriplete
		<table>
		  <tr>
		    <th>Valeur</th>
		    <th>Cube</th>
		  </tr>
		
		<%
			int[] cube= new int[8];
			/* Boucle calculant et affichant le cube des entiers de 0 à 7 */
			for(int i = 0 ; i < 8 ; i++)
			{
			  cube[i] = i * i * i;
			  out.println("<tr><td>" + i  + "</td> <td>" + cube[i] + "</td></tr>");
			}
		%>
		
		</table>
		
		<br>
		Tableau affiché avec JSTL library
		<%-- Boucle calculant le cube des entiers de 0 à 7 et les affichant dans un tableau HTML --%>
		<table>
		  <tr>
		    <th>Valeur</th>
		    <th>Cube</th>
		  </tr>
		
		<c:forEach var="i" begin="0" end="7" step="1">
		  <tr>
		    <td><c:out value="${i}"/></td>
		    <td><c:out value="${i * i * i}"/></td>
		  </tr>
		</c:forEach>
		
		</table>
		<h1>Iteration sur une collection</h1>
		
		
		<%
		  /* Création de la liste et des données */
		  List<Map<String, String>> maListe = new ArrayList<Map<String, String>>();
		  Map<String, String> news = new HashMap<String, String>();
		  news.put("titre", "Titre de ma première news");
		  news.put("contenu", "corps de ma première news");
		  
		  maListe.add(news);
		 
		  news = new HashMap<String, String>();
		  news.put("titre", "Titre de ma seconde news");
		  news.put("contenu", "corps de ma seconde news");
		  
		  maListe.add(news);
		 
		  pageContext.setAttribute("maListe", maListe);
		%>

		<c:forEach items="${maListe}" var="news">
		<div class="news">
		  <div class="titreNews">
		      <c:out value="${news['titre']}" />
		  </div>
		  <div class="corpsNews">
		      <c:out value="${news['contenu']}" />
		  </div>
		</div>
		</c:forEach>
		
		<br>
		
		<c:forEach items="${maListe}" var="news" varStatus="status">
		<div class="news">
		  News n° <c:out value="${status.count}"/> :
		  <div class="titreNews">
		      <c:out value="${news['titre']}" />
		  </div>
		  <div class="corpsNews">
		      <c:out value="${news['contenu']}" />
		  </div>
		</div>
		</c:forEach>
		<br>
		<p>
			<%-- Affiche les différentes sous-chaînes séparées par une virgule ou un point-virgule --%>
			<c:forTokens var="sousChaine" items="salut; je suis un,gros;zéro+!" delims=";,+">
			  ${sousChaine}<br/>
			</c:forTokens>
		</p>
		<%-- Génère une url simple, positionnée dans un lien HTML --%>
			<a href="<c:url value="/test.jsp">
						<c:param name= "date" value="23/12/2015"/>
						<c:param name= "nom" value = "Adrian"/>
						
					</c:url>
						
			">Lien HTML</a>
			
			<%-- Génère une url et la stocke dans la variable lien --%>
			<c:url value="test.jsp" var="lien" />
			<br>
			<c:out value="${lien }"></c:out>
			
			<%-- Une URL générée de cette manière --%>

<a href="<c:url value="/monSiteWeb/test.jsp">

  <c:param name="date" value="22/06/2010"/>

  <c:param name="donnees" value="des données contenant des c@r#ct%res bi&a**es..."/>

</c:url>">Lien HTML</a>

<c:url value="/monSiteWeb/countZeros.jsp">
  <c:param name="nbZeros" value="123"/>
  <c:param name="date" value="22/06/2010"/>
</c:url>
</body>	
</html>