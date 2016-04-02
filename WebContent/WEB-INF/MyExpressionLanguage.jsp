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

        <!-- Logiques sur des bool�ens -->

        ${ true && true } <br /> <!-- Affiche true -->

        ${ true && false } <br /> <!-- Affiche false -->

        ${ !true || false } <br /> <!-- Affiche false -->

        <!-- Calculs arithm�tiques -->

        ${ 10 / 4 } <br /> <!-- Affiche 2.5 -->

        ${ 10 mod 4 } <br /> <!-- Affiche le reste de la division enti�re, soit 2 -->

        ${ 10 % 4 } <br /> <!-- Affiche le reste de la division enti�re, soit 2 -->

        ${ 6 * 7 } <br /> <!-- Affiche 42 -->

        ${ 63 - 8 } <br /> <!-- Affiche 55 -->

        ${ 12 / -8 } <br /> <!-- Affiche -1.5 -->

        ${ 7 / 0 } <br /> <!-- Affiche Infinity -->


        <!-- Compare le r�sultat d'un calcul � une valeur fixe. Ici, 6 x 7 vaut 42 et non pas 48, le r�sultat est false. -->

        ${ 6 * 7 == 48 } <br /> 
	
		<!-- V�rifications si vide ou null -->

		${ empty 'test' } <!-- La cha�ne test�e n'est pas vide, le r�sultat est false -->
		
		${ empty '' } <!-- La cha�ne test�e est vide, le r�sultat est true -->
		
		${ !empty '' } <!-- La cha�ne test�e est vide, le r�sultat est false -->
		
		
		<!-- Conditions ternaires -->
		
		${ true ? 'vrai' : 'faux' } <!-- Le bool�en test� vaut true, vrai est affich� -->
		
		${ empty 'test' ? 'vide' : 'non  vide'  } <!-- La cha�ne test�e n'est pas vide, non vide est affich� -->
		
		<!-- La ligne suivante : -->
		<p>12 est inf�rieur � 8 : ${ 12 lt 8 }.</p>
    </p>
</body>
</html>