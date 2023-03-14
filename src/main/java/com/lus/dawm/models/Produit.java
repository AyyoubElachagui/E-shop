package com.lus.dawm.models;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Produit implements Serializable  {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	private String designation;
	private String description;
	private int qte;
	
	@OneToMany(mappedBy = "produit", fetch = FetchType.EAGER)
	private List<LigneCommande> listLigneCommande;
	
	@ManyToMany
	@JoinTable(
	  name = "produit_category",
	  joinColumns = @JoinColumn(name = "produit_id", referencedColumnName = "id"),
	  inverseJoinColumns = @JoinColumn(name = "categorie_id", referencedColumnName = "id")
	)
	private List<Categorie> Categories;

	
	public long getId() {
		return id;
	}
	
	public void setId(long id) {
		this.id = id;
	}
	
	
	public String getDesignation() {
		return designation;
	}
	
	public void setDesignation(String designation) {
		this.designation = designation;
	}
	
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	
	public int getQte() {
		return qte;
	}
	
	public void setQte(int qte) {
		this.qte = qte;
	}
	
}
