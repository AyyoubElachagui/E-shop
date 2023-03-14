package com.lus.dawm.test;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.lus.dawm.models.Administrateur;
import com.lus.dawm.models.Client;
import com.lus.dawm.models.Panier;

public class main {

	public static void main(String[] args) {
		Administrateur admin = new Administrateur();
		Client client = new Client();
		Panier panier = new Panier();
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("tp1");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction (). begin (); 
		
		em.persist(admin); 
		em.persist(client); 
		em.persist(panier); 
		
		
		
		em.getTransaction (). commit (); 
		em.close();
		emf.close();

	}

}
