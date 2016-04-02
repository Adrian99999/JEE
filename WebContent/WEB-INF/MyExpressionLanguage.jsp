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

        <!-- Logiques sur des booléens -->

        ${ true && true } <br /> <!-- Affiche true -->

        ${ true && false } <br /> <!-- Affiche false -->

        ${ !true || false } <br /> <!-- Affiche false -->

        <!-- Calculs arithmétiques -->

        ${ 10 / 4 } <br /> <!-- Affiche 2.5 -->

        ${ 10 mod 4 } <br /> <!-- Affiche le reste de la division entière, soit 2 -->

        ${ 10 % 4 } <br /> <!-- Affiche le reste de la division entière, soit 2 -->

        ${ 6 * 7 } <br /> <!-- Affiche 42 -->

        ${ 63 - 8 } <br /> <!-- Affiche 55 -->

        ${ 12 / -8 } <br /> <!-- Affiche -1.5 -->

        ${ 7 / 0 } <br /> <!-- Affiche Infinity -->


        <!-- Compare le résultat d'un calcul à une valeur fixe. Ici, 6 x 7 vaut 42 et non pas 48, le résultat est false. -->

        ${ 6 * 7 == 48 } <br /> 
	
		<!-- Vérifications si vide ou null -->

		${ empty 'test' } <!-- La chaîne testée n'est pas vide, le résultat est false -->
		
		${ empty '' } <!-- La chaîne testée est vide, le résultat est true -->
		
		${ !empty '' } <!-- La chaîne testée est vide, le résultat est false -->
		
		
		<!-- Conditions ternaires -->
		
		${ true ? 'vrai' : 'faux' } <!-- Le booléen testé vaut true, vrai est affiché -->
		
		${ empty 'test' ? 'vide' : 'non  vide'  } <!-- La chaîne testée n'est pas vide, non vide est affiché -->
		
		<!-- La ligne suivante : -->
		<p>12 est inférieur à 8 : ${ 12 lt 8 }.</p>
    </p>
</body>
</html>