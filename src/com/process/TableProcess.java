package com.process;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.model.Table;

@WebServlet(urlPatterns = "/invoice")
public class TableProcess  extends HttpServlet{
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	HttpSession hs= req.getSession(false);
	Configuration  configuration=ConnectionDao.getConnnConnectionDao();
	configuration.configure("hibernate.cfg.xml");
	 Session session=configuration.buildSessionFactory().openSession();
	 Transaction transaction=session.beginTransaction();
	 
	 Table t= new Table();
	   t.setDate("90/87/9090");
	   t.setInvoice_amt(req.getParameter("invoice_amt"));
	   t.setInvoice_id("9876");
	   t.setPayment_type("Academic");
	   t.setStatus("Complete");
	   t.setName("Harshit");
	   session.save(t);
	   
	   
	   transaction.commit();
	   System.out.println("success");
	   resp.sendRedirect("landing.jsp");
}
}
