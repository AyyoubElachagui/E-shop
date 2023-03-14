package com.lus.dawm.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Client extends Utilisateur implements Serializable {
	
	
	private String email;
	private String adresse;
	private String dateNaissance;
	
	@OneToMany(mappedBy = "client", fetch = FetchType.EAGER)
	private List<Commande> commandes;
	
	@OneToOne(mappedBy = "client")
	private Panier panier;
	
	public Panier getPanier() {
		return panier;
	}

	public void setPanier(Panier panier) {
		this.panier = panier;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getAdresse() {
		return adresse;
	}
	
	public void setAdresse(String adresse) {
		this.adresse = adresse;
	}
	
	public String getDateNaissance() {
		return dateNaissance;
	}
	
	public void setDateNaissance(String dateNaissance) {
		this.dateNaissance = dateNaissance;
	}
	
}
