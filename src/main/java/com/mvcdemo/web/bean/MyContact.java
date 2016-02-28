package com.mvcdemo.web.bean;

import org.springframework.stereotype.Component;

@Component
public class MyContact implements Contact {
	
	private int id;
	private String firstName;
	private String lastName;
	private String email;
	private String phone;
	private String imgUrl;
	
	public MyContact() {}
	
	public MyContact(int id, String firstName, String lastName,
			String email,String phone, String imgUrl) {
		
		this.id = id;
		this.firstName = firstName;
		this.lastName = lastName;
		this.email = email;
		this.phone = phone;
		this.imgUrl = imgUrl;
		
	}
	
	public int getId() {
		return id;
	}
	
	public String getFirstName() {
		return firstName;
	}

	public String getLastName() {
		return lastName;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getPhone() {
		return phone;
	}
	
	public String getImgUrl() {
		return imgUrl;
	}
	
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public void setImgUrl(String imgUrl) {
		this.imgUrl = imgUrl;
	}
	
	
}
