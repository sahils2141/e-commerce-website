package com.DB;
import java.sql.*;


public class DBConnect {
	
	public static Connection getCon()
	{
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/akart","root","Sahil@1880");
			return con;
		}
	
		catch(Exception e) 
		{
			System.out.print(e);
			return null;
		}
		
	}

}
