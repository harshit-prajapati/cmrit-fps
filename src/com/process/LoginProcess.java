package com.process;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.Detail;



@WebServlet(urlPatterns = "/form")
public class LoginProcess  extends  HttpServlet{
	private String email;
	private String name;
	private String password;
	
	

	
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	doGet(req, resp);
}
@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		email=req.getParameter("email");
		password=req.getParameter("password");
		//System.out.println(email);
		
		Configuration c= new Configuration();
		c.configure("hibernate.cfg.xml");
		 Session session=c.buildSessionFactory().openSession();
		  Transaction transaction=session.beginTransaction();
	

	 
		 org.hibernate.Query query = session.createQuery("from Detail");
	        java.util.List<Detail> list = query.list();
	        
	   Iterator<Detail> i=list.iterator();
	   while(i.hasNext()) {
		   Detail l1=(Detail)i.next();
		  
		  System.out.println(l1.getEmail());
		  
		  
		 if( l1.getEmail().equals(email)&&l1.getPassword().equalsIgnoreCase(password)) {
			 HttpSession h= req.getSession();
			 h.setAttribute("name", l1.getName());
			 req.getRequestDispatcher("landing.jsp").forward(req,resp);
			 
	  
	
 }else {
	 req.getRequestDispatcher("failLogin.jsp").include(req, resp);
	 
 }
 
 
 
		
	   }}
}
