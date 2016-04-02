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
	
		<!-- L'expression EL suivante n'affiche rien si la propri�t� "prenom" n'a pas �t� initialis�e, et n'affiche rien si l'objet "coyote" n'a pas �t� initialis� : -->
		${ coyote.prenom }

        <!-- Initialisation d'un bean de type Coyote avec une action standard, pour l'exemple : -->
        <jsp:useBean id="myBean" class="bean.MyBean" />
        <!-- Initialisation de sa propri�t� 'pr�nom' : -->
        <jsp:setProperty name="myBean" property="prenom" value="Wile E."/>
        <!-- Et affichage de sa valeur : -->
        <!--<jsp:getProperty name="myBean" property="prenom" /> -->
        
        ${ myBean.prenom }
    </p>
    
    <p>

        <% 
        /* Cr�ation d'une liste de l�gumes et insertion de quatre �l�ments */
        java.util.List<String> legumes = new java.util.ArrayList<String>();
        legumes.add( "poireau" );
        legumes.add( "haricot" );
        legumes.add( "carotte");
        legumes.add( "pomme de terre" );

        request.setAttribute( "legumes" , legumes );
        %>

        <!-- Les quatre syntaxes suivantes retournent le deuxi�me �l�ment de la liste de l�gumes  -->
        ${ legumes.get(1) }<br />
        ${ legumes[1] }<br />
        ${ legumes['1'] }<br />
        ${ legumes["1"] }<br />
    </p>
     <p>
        <% 
        /* Cr�ation d'un tableau */
        String[] animaux = {"chien", "chat", "souris", "cheval"};
        request.setAttribute("animaux" , animaux);
        %>
        
        <!-- Les trois syntaxes suivantes retournent le troisi�me �l�ment du tableau  -->
        ${ animaux[2] }<br />
        ${ animaux['2'] }<br />
        ${ animaux["2"] }<br />
    </p>
    <p>
        <% 
        /* Cr�ation d'une Map */
        java.util.Map<String,Integer> desserts = new java.util.HashMap<String, Integer>();
        desserts.put("cookies", 8);
        desserts.put("glaces", 3);
        desserts.put("muffins", 6);
        desserts.put("tartes aux pommes", 2);
        
        request.setAttribute("desserts" , desserts);
        %>
        
        <!-- Les quatre syntaxes suivantes retournent la valeur associ�e � la cl� "cookies" de la Map de desserts  -->
        ${ desserts.cookies }<br />
        ${ desserts.get("cookies") }<br />
        ${ desserts['cookies'] }<br />
        ${ desserts["cookies"] }<br />

        <% 
        /* Cr�ation d'une cha�ne nomm�e "element" et contenant le mot "cookies" */
        String element = "cookies"; 
        request.setAttribute("element",element);
        %>
        <!-- Il est �galement possible d'utiliser un objet au lieu d'initialiser la cl� souhait�e directement dans l'expression -->
        ${ desserts[element] }<br />
    </p>
</body>
</html>