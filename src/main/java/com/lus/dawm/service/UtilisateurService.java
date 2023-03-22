package com.lus.dawm.service;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.lus.dawm.classes.GlobalEntityManager;
import com.lus.dawm.models.Utilisateur;

public class UtilisateurService{
	private EntityManagerFactory emf = Persistence.createEntityManagerFactory("tp1");
	private EntityManager em = emf.createEntityManager();


	
	public Utilisateur findById(Long id) {
		em.getTransaction (). begin ();
		
		Query query = em.createQuery("select c from utilisateur c where c.id = :id");
		query.setParameter("id", id);
		
		Utilisateur generic = (Utilisateur) query.getSingleResult();
		
		if(generic == null)
			return null;
		
		return generic;
	}
	
	public Utilisateur login(String username, String pwd) {
		em.getTransaction (). begin ();
		
		Query query = em.createQuery("select c from Utilisateur c where c.username = :username and pwd = :pwd");
		query.setParameter("username", username);
		query.setParameter("pwd", pwd);
		
		Utilisateur generic = (Utilisateur) query.getSingleResult();
		
		if(generic == null)
			return null;
		
		return generic;
	}

	
	public List<Utilisateur> all() {
		return new ArrayList<>();
	}

	/*
	 * @Override public boolean remove(Utilisateur object, Long id) { return
	 * super.remove(object, id); }
	 */
}
