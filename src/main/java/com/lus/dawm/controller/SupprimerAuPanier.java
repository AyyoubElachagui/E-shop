package com.lus.dawm.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lus.dawm.classes.BD;
import com.lus.dawm.models.LigneCommande;

@WebServlet("/supprimer/panier")
public class SupprimerAuPanier extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int idPanier = Integer.parseInt(req.getParameter("indexPanier"));
		
		BD.deleteLigneCommande(idPanier);
		
		resp.sendRedirect(req.getContextPath()+"/admin/panier/lister.jsp");
	}

	
	
}
