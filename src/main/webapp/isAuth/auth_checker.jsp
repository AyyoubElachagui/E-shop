<%@page import="com.lus.dawm.models.Utilisateur"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%

	HttpSession sessionTest = request.getSession();

	Utilisateur user = (Utilisateur) session.getAttribute("user");
	
	
	if(user != null) {
		response.sendRedirect("./home.jsp");
	}
    
%>