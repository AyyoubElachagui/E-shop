package com.lus.dawm.models;

import java.time.LocalDateTime;

public class Panier {

	private LocalDateTime dateCreation;
	private int idClient;
	
	public LocalDateTime getDateCreation() {
		return dateCreation;
	}
	
	public void setDateCreation(LocalDateTime dateCreation) {
		this.dateCreation = dateCreation;
	}

	public int getIdClient() {
		return idClient;
	}

	public void setIdClient(int idClient) {
		this.idClient = idClient;
	}

}
