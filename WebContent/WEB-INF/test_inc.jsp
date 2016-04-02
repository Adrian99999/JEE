<%@page import="java.util.ArrayList"%>
<%
	ArrayList<Integer> liste = new ArrayList<Integer>();
	liste.add(12);
	out.println("La liste : " +liste.get(0));
%>
