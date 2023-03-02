package com.lus.dawm.models;
import java.time.LocalDateTime;

public class Commande {
	private int id;
	private LocalDateTime dateCreation;
	private LocalDateTime dateLivraison;
	private String adresseLivraison;
	private int idClient;
	

	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}
	

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	
	public LocalDateTime getDateCreation() {
		return dateCreation;
	}
	
	public void setDateCreation(LocalDateTime dateCreation) {
		this.dateCreation = dateCreation;
	}
	
	
	public LocalDateTime getDateLivraison() {
		return dateLivraison;
	}
	
	public void setDateLivraison(LocalDateTime dateLivraison) {
		this.dateLivraison = dateLivraison;
	}
	
	
	public String getAdresseLivraison() {
		return adresseLivraison;
	}
	
	public void setAdresseLivraison(String adresseLivraison) {
		this.adresseLivraison = adresseLivraison;
	}

}
