package com.lus.dawm.test;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import com.lus.dawm.models.Administrateur;
import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.Client;
import com.lus.dawm.models.Panier;
import com.lus.dawm.models.Produit;

public class main {

	public static void main(String[] args) {
		Administrateur admin = new Administrateur();
		Client client = new Client();
		
		Categorie computerCat = new Categorie();
		Categorie laptopComputerCat = new Categorie();
		Categorie diskTopComputerCat = new Categorie();
		Produit p1 = new Produit();
		Produit p2 = new Produit();
		List<Categorie> categories1 = new ArrayList<Categorie>();
		List<Categorie> categories2 = new ArrayList<Categorie>();
		
		computerCat.setDesignation("Ordinateur");
		laptopComputerCat.setDesignation("Ordinateur Portable");
		diskTopComputerCat.setDesignation("Ordinateur Bureau");
		laptopComputerCat.setParentCategorie(computerCat);
		diskTopComputerCat.setParentCategorie(computerCat);
		
		categories1.add(laptopComputerCat);
		p1.setDesignation("Dell XPS 13");
		p1.setCategories(categories1);
		
		categories2.add(diskTopComputerCat);
		p2.setDesignation("ASUS ExpertCenter D5 SFF D500SD");
		p2.setCategories(categories2);
		
		
		EntityManagerFactory emf = Persistence.createEntityManagerFactory("tp1");
		EntityManager em = emf.createEntityManager();
		
		em.getTransaction (). begin (); 
		
		em.persist(admin); 
		em.persist(client);  
		em.persist(computerCat);
		em.persist(laptopComputerCat);
		em.persist(diskTopComputerCat);
		em.persist(p1);
		em.persist(p2);
		
		
		
		em.getTransaction (). commit (); 
		em.close();
		emf.close();

	}

}
