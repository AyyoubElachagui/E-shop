package com.lus.dawm.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lus.dawm.classes.BD;
import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.LigneCommande;
import com.lus.dawm.models.Panier;

@WebServlet("/ajouter/panier")
public class AjouterPanier extends HttpServlet{
	

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {		
		int min = 200;  
		int max = 400;  
		int price = (int)(Math.random()*(max-min+1)+min); 
		int qte = (int)(Math.random()*((max / 10) - ( min / 10 )+1)+ ( min / 10 )); 
		
		String idPro = req.getParameter("idpro_panier");
		
		LigneCommande lc = new LigneCommande();
		
		
		lc.setPrix(price);
		lc.setQte(qte);
		
		BD.addLigneCommande(lc);
		
		resp.sendRedirect(req.getContextPath()+"/admin/produit/lister.jsp");
	}
	
	

}
