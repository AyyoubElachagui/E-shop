package com.lus.dawm.classes;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class GlobalEntityManager {
	protected static EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("tp1");
	private EntityManager entityManager = entityManagerFactory.createEntityManager();
	
	public EntityManager getEntityManager() {
		return entityManager;
	}
	public void setEntityManager(EntityManager entityManager) {
		this.entityManager = entityManager;
	}

}
