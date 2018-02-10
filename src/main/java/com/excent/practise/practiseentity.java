package com.excent.practise;

import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Entity;

@Entity
@Table(name="practise")
public class practiseentity {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private Long Id;
	private String firstname;
	private String lastname;
	private String email;
	private String gender;
	private String username;
	private String password;
	public Long getId() {
		return Id;
	}
	
	public practiseentity(String firstname, String lastname, String email, String gender, String username,
			String password) {
		
		this.firstname = firstname;
		this.lastname = lastname;
		this.email = email;
		this.gender = gender;
		this.username = username;
		this.password = password;
	}
	

	public practiseentity() {
		
	}

	public void setId(Long id) {
		Id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	

}
