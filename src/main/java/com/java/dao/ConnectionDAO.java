package com.java.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionDAO {
	private static final String url = "jdbc:mysql://localhost:3306/HOTEL_DB";
    private static final String username = "root";
    private static final String password = "YWOLF123@";
    
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
    	Class.forName("com.mysql.cj.jdbc.Driver");
        return DriverManager.getConnection(url, username, password);
    }
    
}
