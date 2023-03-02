<%@page import="com.lus.dawm.models.Categorie"%>
<%@page import="java.util.List"%>
<%@page import="com.lus.dawm.models.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	HttpSession sessionTest = request.getSession();

	Utilisateur user = (Utilisateur) session.getAttribute("user");
	

	List<Categorie> listCategorie = (List<Categorie>) session.getAttribute("categories"); 
	
	
	if(user == null) {
		response.sendRedirect("./");
	}
    
%>