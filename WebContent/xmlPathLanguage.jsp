<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/xml" prefix="x" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<c:import url="monDocument.xml" varReader="monReader">
			<%-- Parse le contenu du fichier XML monDocument.xml dans une variable nommée 'doc' --%>
			<x:parse var="doc" doc= "${monReader }" ></x:parse>
			<x:out select="$doc/news/article/auteur"/>
			
			<x:out select="count($doc/news/article/auteur)"/>
			
			<%--declaration d'une var et l'affichage --%>
			<c:set var="myVar" value="1"></c:set>
			<c:out value="${myVar }"></c:out>
			
			<%-- Sélectionne le nœud 'article' dont l'attribut 'id' a pour valeur le contenu de la variable nommée 'idArticle' qui a été passée en paramètre de la requête, via l'objet implicite param  --%>
			<x:out select="$doc/news/article[@id=$myVar]"/>
		</c:import>
		
		<%-- Afficher le titre de la news postée par 'Paul' --%>
		<x:if select="$doc/news/article[auteur='Paul']">
		   Paul a déjà posté une news dont voici le titre :
		   <x:out select="$doc/news/article[auteur='Paul']/titre" />
		</x:if>
		
		<%-- Affiche le titre de la news postée par 'Nicolas' si elle existe, et un simple message sinon --%>
		<x:choose>
		   <x:when select="$doc/news/article[auteur='Nicolas']">
		      Nicolas a déjà posté une news dont voici le titre :
		      <x:out select="$doc/news/article[auteur='Nicolas']/titre" />
		   </x:when>
		   <x:otherwise>
		      Nicolas n'a pas posté de news.
		   </x:otherwise>
		</x:choose>
		
		
		<%-- Parse le flux XML contenu dans le corps de la balise --%>
		<x:parse var="doc">
			<news>
			  <article id="1">
				<auteur>Pierre</auteur>
				<titre>Foo...</titre>
				<contenu>...bar !</contenu>
			  </article>
			  <article id="27">
				<auteur>Paul</auteur>
				<titre>Bientôt un LdZ J2EE !</titre>
				<contenu>Woot ?</contenu>
			  </article>
			  <article id="102">
				<auteur>Jacques</auteur>
				<titre>Coyote court toujours</titre>
				<contenu>Bip bip !</contenu>
			  </article>
			</news>
		</x:parse>

</body>
</html>