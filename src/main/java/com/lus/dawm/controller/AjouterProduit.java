package com.lus.dawm.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lus.dawm.classes.BD;
import com.lus.dawm.dao.DAOProduit;
import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.Produit;
import com.lus.dawm.utils.EMFUtil;

@WebServlet("/ajouter/produit")
public class AjouterProduit extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManager em = EMFUtil.getEMFactory().createEntityManager();
		String designation = req.getParameter("designation");
		String description = req.getParameter("description");
		Long idCatSelected = Long.parseLong(req.getParameter("categorie"));
		String qte = req.getParameter("qte");
		
		Produit produit = new Produit();
		produit.setDesignation(designation);
		produit.setDescription(description);
		produit.setQte(Integer.parseInt(qte));
		
		em.getTransaction().begin();
		
		if(idCatSelected != -1) {
			Categorie categorie = em.find(Categorie.class, idCatSelected);
			if(categorie != null) {
				List<Categorie> lCat = new ArrayList<Categorie>();
				lCat.add(categorie);
				produit.setCategories(lCat);
			}
		}
		
		em.persist(produit);
		
		em.getTransaction (). commit ();
		
		resp.sendRedirect(req.getContextPath()+"/admin/produit/lister.jsp");
	}

	
	
}
