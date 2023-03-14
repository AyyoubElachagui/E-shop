package com.lus.dawm.models;

import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Panier implements Serializable {

	@Id
	private long id;
	
	private LocalDateTime dateCreation;
	
	@OneToOne(optional = false)
	@JoinColumn(name = "client_id", referencedColumnName = "id")
	private Client client;
	
	@OneToMany(mappedBy = "panier", fetch = FetchType.EAGER)
	private List<LigneCommande> listLigneCommande;
	
	
	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}
	
	public Client getClient() {
		return client;
	}

	public void setClient(Client client) {
		this.client = client;
	}

	public LocalDateTime getDateCreation() {
		return dateCreation;
	}
	
	public void setDateCreation(LocalDateTime dateCreation) {
		this.dateCreation = dateCreation;
	}

}
