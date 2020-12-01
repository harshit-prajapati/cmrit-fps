package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
@javax.persistence.Table(name = "invoice")
public class Table {
	private String name;
public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
private String invoice_id;
private String payment_type;
private String date;
public String getInvoice_id() {
	return invoice_id;
}
public void setInvoice_id(String invoice_id) {
	this.invoice_id = invoice_id;
}
public String getPayment_type() {
	return payment_type;
}
public void setPayment_type(String payment_type) {
	this.payment_type = payment_type;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getStatus() {
	return status;
}
public void setStatus(String status) {
	this.status = status;
}
public String getInvoice_amt() {
	return invoice_amt;
}
public void setInvoice_amt(String invoice_amt) {
	this.invoice_amt = invoice_amt;
}
public String getStd_id() {
	return std_id;
}
public void setStd_id(String std_id) {
	this.std_id = std_id;
}
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
private String status;
private String invoice_amt;
private String  std_id;
@Id
@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
}
