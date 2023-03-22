package com.lus.dawm.controller;

import java.io.IOException;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lus.dawm.models.Categorie;
import com.lus.dawm.utils.EMFUtil;

@WebServlet("/edit/categorie")
public class EditCategorie extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		EntityManager em = EMFUtil.getEMFactory().createEntityManager();
		
		Long indexCat = Long.parseLong(req.getParameter("indexCat"));
		String designation = req.getParameter("designation");
		String description = req.getParameter("description");

		em.getTransaction().begin();
		
		Categorie categorie = em.find(Categorie.class, indexCat);
		if(categorie != null) {
			categorie.setDesignation(designation);
			categorie.setDescription(description);
			em.flush();
			em.getTransaction (). commit ();
		}

		resp.sendRedirect(req.getContextPath()+"/admin/categorie/lister.jsp");
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

}
