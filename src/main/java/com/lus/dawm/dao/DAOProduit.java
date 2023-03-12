package com.lus.dawm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.lus.dawm.classes.BD;
import com.lus.dawm.models.Produit;

public class DAOProduit {

	
	private Connection connection;
	 
	
	public DAOProduit() throws ClassNotFoundException, SQLException{
		connection = BD.getInstance();
	}
	
	public List<Produit> list() throws SQLException{
		String sql = "SELECT * FROM produit";
		
		Statement s = connection.createStatement();
		
		ResultSet rs = s.executeQuery(sql);
		
		List<Produit> lp = new ArrayList<Produit>();
		
		 while(rs.next()) {
			 Produit pro = new Produit();
			 pro.setId(rs.getInt("id"));
			 pro.setDesignation(rs.getString("designation"));
			 pro.setDescription(rs.getString("description"));
			 pro.setQte(rs.getInt("qte"));
			 pro.setPrix(rs.getDouble("prix"));
			 
			 lp.add(pro);
		 }
		 
		 return lp;
	}
	
	public boolean delete(int idPro) throws SQLException {
		String sql = "DELETE FROM produit WHERE id = ?";
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setInt(1, idPro);
		int isDelete = ps.executeUpdate();
		
		if(isDelete == 1) {
			return true;
		}
		
		return false;
	}
	
	public boolean add(Produit produit) throws SQLException {
		String sql = "INSERT INTO produit (designation, prix, description, qte) values (?,?,?,?)";
		
		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, produit.getDesignation());
		ps.setDouble(2, produit.getPrix());
		ps.setString(3, produit.getDescription());
		ps.setInt(4, produit.getId());
		
		int result = ps.executeUpdate();
		
		if(result == 1) {
			return true;
		}
		
		return false;
		
	}
	

}
