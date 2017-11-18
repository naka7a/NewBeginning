package com.ab.model;

public class Restaurant {

		private long id;
		private String email;
		//private String password;
		private String nume;
		private String descriere;
		//private Blob image;
		private String tara;
		private String judet;
		private String localitate;
		private String strada;
		private String numar;
		private String telefon;
		
		public Restaurant(){
			
		}
		
		
		
		public String getTelefon() {
			return telefon;
		}



		public void setTelefon(String telefon) {
			this.telefon = telefon;
		}



		public long getId() {
			return id;
		}



		public void setId(long id) {
			this.id = id;
		}



		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getNume() {
			return nume;
		}
		public void setNume(String nume) {
			this.nume = nume;
		}
		public String getDescriere() {
			return descriere;
		}
		public void setDescriere(String descriere) {
			this.descriere = descriere;
		}
	/*	public Blob getImage() {
			return image;
		}
		public void setImage(Blob image) {
			this.image = image;
		}*/
		public String getTara() {
			return tara;
		}
		public void setTara(String tara) {
			this.tara = tara;
		}
		public String getJudet() {
			return judet;
		}
		public void setJudet(String judet) {
			this.judet = judet;
		}
		public String getLocalitate() {
			return localitate;
		}
		public void setLocalitate(String localitate) {
			this.localitate = localitate;
		}
		public String getStrada() {
			return strada;
		}
		public void setStrada(String strada) {
			this.strada = strada;
		}
		public String getNumar() {
			return numar;
		}
		public void setNumar(String numar) {
			this.numar = numar;
		}
		
		
		
	}


