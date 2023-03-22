package com.lus.dawm.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lus.dawm.dao.DAOUtilisateur;
import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.LigneCommande;
import com.lus.dawm.models.Panier;
import com.lus.dawm.models.Produit;
import com.lus.dawm.models.Utilisateur;
import com.lus.dawm.service.UtilisateurService;
import com.lus.dawm.utils.DataStore;
import com.lus.dawm.utils.EMFUtil;

@WebServlet("/login")
public class UtilisateurController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		Utilisateur user = (Utilisateur) session.getAttribute("user");
		resp.setContentType("text/html");

		PrintWriter pw = resp.getWriter();

		if (user == null) {
			resp.sendRedirect("./auth/login.html");
		} else {
			resp.sendRedirect("./home.jsp");
		}
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
// create Entity Manager with initial it 
		EntityManager em = EMFUtil.getEMFactory().createEntityManager();
// get request data (username, password)
		String username = req.getParameter("username");
		String password = req.getParameter("pwd");

		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		
		Utilisateur user = new Utilisateur();

		em.getTransaction().begin();

		try {

			Query query = em.createQuery("select c from Utilisateur c where c.username = :username and c.pwd = :pwd");
			query.setParameter("username", username);
			query.setParameter("pwd", password);
			user = (Utilisateur) query.getSingleResult();
			em.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		if (user.getUsername() != null) {
			resp.sendRedirect("./admin/dashboard.jsp");
			user.setUsername("Ayyoub Elachagui");
			DataStore.setUser(user);
		} else {
			pw.write("<a href='./auth/login.html'>Login ou mot de passe incorrects !</a>");
		}

	}

}
