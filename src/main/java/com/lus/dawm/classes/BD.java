package com.lus.dawm.classes;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.lus.dawm.models.Categorie;
import com.lus.dawm.models.LigneCommande;
import com.lus.dawm.models.Panier;
import com.lus.dawm.models.Produit;

public class BD {
	private static Connection connection;
	
	private BD() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/eshop", "root", "");
	}
	
	public static Connection getInstance() throws ClassNotFoundException, SQLException {
		
		if(connection == null)
			new BD();
		
		return connection;
		
	}
	
	
	
	private static List<Produit> produits = new ArrayList<Produit>();
	private static List<Categorie> categories = new ArrayList<Categorie>();
	private static List<Panier> paniers = new ArrayList<Panier>();
	private static List<LigneCommande> ligneCommandes = new ArrayList<LigneCommande>();
	
	// start BD for products

	public static List<Produit> getProduits() {
		return produits;
	}

	public static void setProduits(List<Produit> produits) {
		BD.produits = produits;
	}
	
	public static Produit getProduit(int indexPro) {
		return BD.produits.get(indexPro);
	}
	
	public static void addProduit(Produit produit) {
		BD.produits.add(produit);
	}
	
	public static int nombreProduits() {
		return BD.produits.size();
	}
	
	// end BD for products
	
	// start BD for categories
	
	public static List<Categorie> getCategories() {
		return categories;
	}

	public static void setCategorie(List<Categorie> categories) {
		BD.categories = categories;
	}
	
	public static void addCategorie(Categorie categorie) {
		BD.categories.add(categorie);
	}
	
	public static void deleteCategorie(int indexCat) {
		BD.categories.remove(BD.categories.get(indexCat));
	}
	
	public static int nombreCategories() {
		return BD.categories.size();
	}
	
	// end BD for categories
	
	// start BD for paniers
	
	public static List<Panier> getPaniers() {
		return paniers;
	}

	public static void setPanier(List<Panier> paniers) {
		BD.paniers = paniers;
	}
	
	public static void addPanier(Panier panier) {
		BD.paniers.add(panier);
	}
	
	public static void deletePanier(int indexCat) {
		BD.paniers.remove(BD.paniers.get(indexCat));
	}
	
	public static int nombrePaniers() {
		return BD.paniers.size();
	}
	
	// end BD for paniers	
	
	// start BD for ligneCommandes
	
	public static List<LigneCommande> getLigneCommandes() {
		return ligneCommandes;
	}

	public static void setLigneCommande(List<LigneCommande> ligneCommandes) {
		BD.ligneCommandes = ligneCommandes;
	}
	
	public static void addLigneCommande(LigneCommande ligneCommande) {
		BD.ligneCommandes.add(ligneCommande);
	}
	
	public static void deleteLigneCommande(int indexPanier) {
		BD.ligneCommandes.remove(BD.ligneCommandes.get(indexPanier));
	}
	
	public static int nombreLigneCommandes() {
		return BD.ligneCommandes.size();
	}
	
	// end BD for ligneCommandes	
	
	public static Produit getProduitById(int idPro) {
		Produit produit = new Produit();
		for(int i = 0; i < BD.produits.size(); i++) {
			if(BD.produits.get(i).getId() == idPro) {
				produit.setId(BD.produits.get(i).getId());
				produit.setDescription(BD.produits.get(i).getDescription());
				produit.setDesignation(BD.produits.get(i).getDesignation());
				produit.setQte(BD.produits.get(i).getQte());
			}
		}
		return produit;
	}
}
