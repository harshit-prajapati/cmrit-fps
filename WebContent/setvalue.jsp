 <%@page import="com.model.Table"%>
<%@page import="java.util.Iterator"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="com.model.Detail"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="com.process.ConnectionDao"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="org.hibernate.Session"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%
List list=new ArrayList();
Session session1;
HttpSession hs= request.getSession(false);
Configuration configuration=ConnectionDao.getConnnConnectionDao();
configuration.configure("hibernate.cfg.xml");
 session1=configuration.buildSessionFactory().openSession();
 Transaction transaction=session1.beginTransaction();
  Detail d= new Detail();
 d.setName("Onish");
 d.setAddress("Shanti nagar");
 d.setAdmission("COMED-K");
 d.setAmt("1234");
 d.setImage("D:/eclipse workspace/Sem_Project/WebContent/profile.png");
 d.setCollege_fee("3456");
 d.setConsortium_fee("7890");
 d.setDate("90/12/67");
 d.setEmail("std2@gmail.com");
 d.setFather("Father");
 d.setFather_occupation("Private");
 d.setInvoice("0988");
 d.setInvoice_amt("0987");
 d.setLogin_type("std");
 d.setPassword("123");
//d.setPayment_option(payme);
 d.setPayment_type("Academic");
 d.setPending_amount("6543");
 d.setSem("3");
 d.setStatus("complete");
 d.setTution_fee("7654");
 d.setUsn("CRN78075");
 d.setYear("10");
 d.setStream("CS");
   session1.save(d);
   Table t= new Table();
   t.setDate("90/87/9090");
   t.setInvoice_amt("987");
   t.setInvoice_id("9876");
   t.setPayment_type("Academic");
   t.setStatus("Complete");
   session1.save(t);
   
   
   transaction.commit();
   System.out.println("success");
   
   %>