package com.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Registration")
public class Detail {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
private int id;
	private String name;
	
	private String email;
	private String password;
	private String login_type;
	private String payment_option;
	private String payment_type;
	private String pending_amount;
	private String college_fee;
	private String tution_fee;
	private String consortium_fee;
	private String amt;
	private String invoice;
	private String date;
	private String image;
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	private String invoice_amt;
	private String status;
	private String admission;
	private String usn;
	private String stream;
	private String sem;
	private String year;
	private String father;
	private String father_occupation;
	private String address;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getLogin_type() {
		return login_type;
	}
	public void setLogin_type(String login_type) {
		this.login_type = login_type;
	}
	public String getPayment_option() {
		return payment_option;
	}
	public void setPayment_option(String payment_option) {
		this.payment_option = payment_option;
	}
	public String getPayment_type() {
		return payment_type;
	}
	public void setPayment_type(String payment_type) {
		this.payment_type = payment_type;
	}
	public String getPending_amount() {
		return pending_amount;
	}
	public void setPending_amount(String pending_amount) {
		this.pending_amount = pending_amount;
	}
	public String getCollege_fee() {
		return college_fee;
	}
	public void setCollege_fee(String college_fee) {
		this.college_fee = college_fee;
	}
	public String getTution_fee() {
		return tution_fee;
	}
	public void setTution_fee(String tution_fee) {
		this.tution_fee = tution_fee;
	}
	public String getConsortium_fee() {
		return consortium_fee;
	}
	public void setConsortium_fee(String consortium_fee) {
		this.consortium_fee = consortium_fee;
	}
	public String getAmt() {
		return amt;
	}
	public void setAmt(String amt) {
		this.amt = amt;
	}
	public String getInvoice() {
		return invoice;
	}
	public void setInvoice(String invoice) {
		this.invoice = invoice;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getInvoice_amt() {
		return invoice_amt;
	}
	public void setInvoice_amt(String invoice_amt) {
		this.invoice_amt = invoice_amt;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getAdmission() {
		return admission;
	}
	public void setAdmission(String admission) {
		this.admission = admission;
	}
	public String getUsn() {
		return usn;
	}
	public void setUsn(String usn) {
		this.usn = usn;
	}
	public String getStream() {
		return stream;
	}
	public void setStream(String stream) {
		this.stream = stream;
	}
	public String getSem() {
		return sem;
	}
	public void setSem(String sem) {
		this.sem = sem;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
	}
	public String getFather() {
		return father;
	}
	public void setFather(String father) {
		this.father = father;
	}
	public String getFather_occupation() {
		return father_occupation;
	}
	public void setFather_occupation(String father_occupation) {
		this.father_occupation = father_occupation;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	
	
}
