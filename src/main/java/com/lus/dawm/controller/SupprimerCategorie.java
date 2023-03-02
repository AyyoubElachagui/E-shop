package com.lus.dawm.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lus.dawm.classes.BD;
import com.lus.dawm.models.Categorie;

@WebServlet("/supprimer/categorie")
public class SupprimerCategorie extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int indexCat = Integer.parseInt(req.getParameter("indexCat"));

		BD.deleteCategorie(indexCat);

		resp.sendRedirect(req.getContextPath()+"/admin/categorie/lister.jsp");
	}

}
