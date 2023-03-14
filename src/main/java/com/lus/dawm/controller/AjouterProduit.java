package com.lus.dawm.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lus.dawm.classes.BD;
import com.lus.dawm.dao.DAOProduit;
import com.lus.dawm.models.Produit;

@WebServlet("/ajouter/produit")
public class AjouterProduit extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String idPro = req.getParameter("prix");
		String designation = req.getParameter("designation");
		String description = req.getParameter("description");
		String qte = req.getParameter("qte");
		
		Produit produit = new Produit();
		produit.setDesignation(designation);
		produit.setDescription(description);
		produit.setQte(Integer.parseInt(qte));
		
		boolean isInserted = false;
		
		try {
			DAOProduit dp = new DAOProduit();
			isInserted = dp.add(produit);
			
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.getMessage());
		}
		
		resp.sendRedirect(req.getContextPath()+"/admin/produit/lister.jsp");
	}

	
	
}
