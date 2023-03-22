package com.lus.dawm.controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lus.dawm.classes.BD;
import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.Produit;
import com.lus.dawm.utils.EMFUtil;

@WebServlet("/supprimer/categorie")
public class SupprimerCategorie extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManager em = EMFUtil.getEMFactory().createEntityManager();
		
		Long indexCat = Long.parseLong(req.getParameter("indexCat"));

		em.getTransaction().begin();
		
		Categorie categorie = em.find(Categorie.class, indexCat);
		if(categorie != null) {
			em.remove(categorie);
			em.getTransaction (). commit ();
		}

		resp.sendRedirect(req.getContextPath()+"/admin/categorie/lister.jsp");
	}

}
