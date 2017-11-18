package com.ab.model;



public class User {
	
	private String nume;
	private String email;
	private int id;
	
	
	public User(String nume, String email,int id) {
		super();
		this.nume = nume;
		this.email = email;
		this.id = id;
	}
	
	
	public String getNume() {
		return nume;
	}
	public void setNume(String nume) {
		this.nume = nume;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}
	
	

}
