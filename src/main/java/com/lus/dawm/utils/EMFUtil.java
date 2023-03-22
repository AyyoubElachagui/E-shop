package com.lus.dawm.utils;

import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

public class EMFUtil {
	
	private static EntityManagerFactory emf = buildFactory();
	
	public static EntityManagerFactory getEMFactory() {
		return emf;
	}
	
	private static EntityManagerFactory buildFactory () {
		return Persistence.createEntityManagerFactory("tp1");
    }

}
