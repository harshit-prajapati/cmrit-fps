package com.process;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;



public class ConnectionDao {
	public  static Configuration configuration= new Configuration(); ;
	public static Configuration getConnnConnectionDao() {
		
		
		return configuration;
		
	}
	
	private ConnectionDao() {
		
	}

}
