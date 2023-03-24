package com.lus.dawm.utils;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.Produit;
import com.lus.dawm.models.Utilisateur;

public class DataStore {
	
	private static Utilisateur user = new Utilisateur();
	private static List<Categorie> categories = new ArrayList<Categorie>();
	private static List<Produit> produits = new ArrayList<Produit>();
	private static Categorie categorie = new Categorie();
	private static Produit produit = new Produit();
	
	private static EntityManager em = EMFUtil.getEMFactory().createEntityManager();
	
	
	public static Utilisateur getUser() {
		return user;
	}
	public static void setUser(Utilisateur user) {
		DataStore.user = user;
	}
	public static List<Categorie> getCategories() {
		return categories;
	}
	public static void setCategories(List<Categorie> categories) {
		DataStore.categories = categories;
	}
	public static List<Produit> getProduits() {
		return produits;
	}
	public static void setProduits(List<Produit> produits) {
		DataStore.produits = produits;
	}
	public static Categorie getCategorie() {
		return categorie;
	}
	public static void setCategorie(Categorie categorie) {
		DataStore.categorie = categorie;
	}
	public static Produit getProduit() {
		return produit;
	}
	public static void setProduit(Produit produit) {
		DataStore.produit = produit;
	}
	
	public static List<Produit> listProduits(){
		Query query = em.createQuery("SELECT p FROM Produit p");
		List<Produit> produits = new ArrayList<Produit>();
		try {
			produits = (List<Produit>) query.getResultList();
			return produits;
		}catch(Exception e) {
			return produits;
			
		}
	}
	
	public static List<Categorie> listCategories(){
		Query query = em.createQuery("SELECT c FROM Categorie c");
		List<Categorie> categories = new ArrayList<Categorie>();
		try {
			categories = (List<Categorie>) query.getResultList();
			System.out.println("------------------------ updated ************ ");
			for(Categorie categorie: categories) {
				System.out.println("**** "+categorie.getDesignation()+" ****");
			}
			return categories;
		}catch(Exception e) {
			return categories;
			
		}
	}
	
}
