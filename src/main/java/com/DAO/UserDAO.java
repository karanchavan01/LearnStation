package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.entities.User;

public class UserDAO {
	private Connection conn;

	public UserDAO(Connection conn) {
		super();
		this.conn = conn;
	}
	
	public boolean userSignup(User us) {
		boolean f=false;
		try {
			String query = "insert into user(name, email, password) values(?, ?, ?)";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, us.getName());
			ps.setString(2, us.getEmail());
			ps.setString(3, us.getPassword());
			
			ps.executeUpdate();
			f=true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	
	public User getSignin(String email, String password) {
		User us = null;
		try {
			String query = "select * from user where email=? and password=?";
			PreparedStatement ps = conn.prepareStatement(query);
			ps.setString(1, email);
			ps.setString(2, password);
			
			ResultSet rs = ps.executeQuery();
			
			if(rs.next()) {
				us = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getString(4));
				
				
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return us;
	}
}
