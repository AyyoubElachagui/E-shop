package com.lus.dawm.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lus.dawm.dao.DAOProduit;

@WebServlet("/produit/supprimer")
public class SupprimerProduit extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		int idPro = Integer.parseInt(req.getParameter("idPro"));
		
		boolean isInserted = false;
		
		try {
			DAOProduit dp = new DAOProduit();
			isInserted = dp.delete(idPro);
			
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println(e.getMessage());
		}

		resp.sendRedirect(req.getContextPath()+"/admin/produit/lister.jsp");
	}

}
