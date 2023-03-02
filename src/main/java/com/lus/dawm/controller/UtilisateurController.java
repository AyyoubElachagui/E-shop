package com.lus.dawm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.LigneCommande;
import com.lus.dawm.models.Panier;
import com.lus.dawm.models.Produit;
import com.lus.dawm.models.Utilisateur;

@WebServlet("/login")
public class UtilisateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Utilisateur user = (Utilisateur) session.getAttribute("user");
		resp.setContentType("text/html");
		
		PrintWriter pw = resp.getWriter();
		
		if(user == null) {
			resp.sendRedirect("./auth/login.html");
		}else {
			resp.sendRedirect("./home.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String username = req.getParameter("username");
		String password = req.getParameter("pwd");
		
		HttpSession session = req.getSession();
		
		resp.setContentType("text/html");
		
		PrintWriter pw = resp.getWriter();
		
		if(username.equals("admin") && password.equals("root")) {
			resp.sendRedirect("./admin/dashboard.jsp");
			Utilisateur user = new Utilisateur();
			user.setUsername("Ayyoub Elachagui");
			user.setPwd(password);
			session.setAttribute("user", user);
		}else {
			pw.write("<a href='./auth/login.html'>Login ou mot de passe incorrects !</a>");
		}
		
		
	}
	
	
	
	

}
