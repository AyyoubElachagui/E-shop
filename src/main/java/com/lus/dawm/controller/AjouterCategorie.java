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

@WebServlet("/ajouter/categorie")
public class AjouterCategorie extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String idCat = req.getParameter("idCat");
		String designation = req.getParameter("designation");
		String description = req.getParameter("description");
		
		Categorie categorie = new Categorie();
		categorie.setId(Integer.parseInt(idCat));
		categorie.setDesignation(designation);
		categorie.setDescription(description);
		
		BD.addCategorie(categorie);
		resp.sendRedirect(req.getContextPath()+"/admin/categorie/lister.jsp");
	}

	
	
}
