package com.lus.dawm.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.lus.dawm.classes.BD;
import com.lus.dawm.models.Utilisateur;

public class DAOUtilisateur {
	
	private Connection connection;
	 
	
	public DAOUtilisateur() throws ClassNotFoundException, SQLException{
		connection = BD.getInstance();
	}
	
	public boolean login(String username, String pwd) throws SQLException {
		String sql = "SELECT * FROM utilisateur WHERE username = ? and pwd = ?";
		
		PreparedStatement ps = this.connection.prepareStatement(sql);
		
		ps.setString(1, username);
		ps.setString(2, pwd);
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			return true;
		}
		
		return false;
	}
	
	public Utilisateur auth(String username, String pwd) throws SQLException {
		String sql = "SELECT * FROM utilisateur WHERE username = ? and pwd = ?";
		
		PreparedStatement ps = this.connection.prepareStatement(sql);
		
		ps.setString(1, username);
		ps.setString(2, pwd);
		ResultSet rs = ps.executeQuery();
		
		Utilisateur user = new Utilisateur();
		
		if(rs.next()) {
			user.setId(rs.getLong("id"));
			user.setPwd(rs.getString("pwd"));
			user.setUsername(rs.getString("username"));
			return user;
		}
		
		return user;
	}

}
