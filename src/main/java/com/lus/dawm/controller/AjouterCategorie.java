package com.lus.dawm.controller;

import java.io.IOException;
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
import com.lus.dawm.models.Categorie;
import com.lus.dawm.utils.EMFUtil;

@WebServlet("/ajouter/categorie")
public class AjouterCategorie extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManager em = EMFUtil.getEMFactory().createEntityManager();
		
		String designation = req.getParameter("designation");
		String description = req.getParameter("description");
		Long idCatSelected = Long.parseLong(req.getParameter("categorie"));
		
		Categorie categorie = new Categorie();
		categorie.setDesignation(designation);
		categorie.setDescription(description);

		
		em.getTransaction().begin();
		

		
		if(idCatSelected != -1) {
			Categorie parentCat = em.find(Categorie.class, idCatSelected);
			if(parentCat != null) {
				categorie.setParentCategorie(parentCat);
			}
		}
		
		em.persist(categorie);
		
		em.getTransaction (). commit ();
		
		resp.sendRedirect(req.getContextPath()+"/admin/categorie/lister.jsp");
	}

	
	
}
