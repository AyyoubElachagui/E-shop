package com.lus.dawm.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lus.dawm.dao.DAOProduit;
import com.lus.dawm.models.Produit;
import com.lus.dawm.utils.EMFUtil;

@WebServlet("/produit/supprimer")
public class SupprimerProduit extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManager em = EMFUtil.getEMFactory().createEntityManager();
		
		Long idPro = Long.parseLong(req.getParameter("idPro"));
		
		em.getTransaction().begin();
		
		Produit produit = em.find(Produit.class, idPro);
		if(produit != null) {
			em.remove(produit);
			em.getTransaction (). commit ();
		}

		resp.sendRedirect(req.getContextPath()+"/admin/produit/lister.jsp");
	}

}
