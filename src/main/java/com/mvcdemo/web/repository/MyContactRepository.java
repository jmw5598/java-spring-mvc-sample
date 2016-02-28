package com.mvcdemo.web.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Component;

import com.mvcdemo.web.bean.MyContact;
import com.mvcdemo.web.bean.Contact;

@Component
public class MyContactRepository implements ContactRepository{

	private List<Contact> contacts;
	
	public MyContactRepository() {
		
		contacts = new ArrayList<Contact>();
		generateMyContacts();
		
	}
	
	@Override
	public List<Contact> findAllContacts() {
		
		return contacts;
		
	}
	
	@Override
	public Contact findContactById(int id) {
		
		return contacts.get(id);
		
	}
	
	private void generateMyContacts() {
		
		contacts.add( new MyContact(0, "Jason", "White", "jw@gmail.com", "212-234-6425", "/resources/img/male1.png") );
		contacts.add( new MyContact(1, "Jane", "Smith", "js@gmail.com", "213-543-1214", "/resources/img/female1.png"));
		contacts.add( new MyContact(2, "Martin", "Sherwood", "ms@yahoo.com", "313-425-1211", "/resources/img/male2.png"));
		contacts.add( new MyContact(3, "Alex", "Robinson", "ar@hotmail.com", "242-344-2356", "/resources/img/default.png"));
		contacts.add( new MyContact(4, "John", "Quesalupa", "jq@yahoo.com", "998-898-4233", "/resources/img/male3.png"));
		contacts.add( new MyContact(5, "Michelle", "Branch", "mb@mbranch.comd", "248-313-1255", "/resources/img/female2.png"));
		contacts.add( new MyContact(6, "Linda", "Cardellini", "lc@gmail.com", "123-123-1234", "/resources/img/default.png"));
		contacts.add( new MyContact(7, "Jimmy", "Changa", " jc1@yahoo.com", "586-323-1245", "/resources/img/male4.png"));
		contacts.add( new MyContact(8, "Deloris", "Johnson", "dj@djohnson.net", "213-124-2857", "/resources/img/female3.png"));
		contacts.add( new MyContact(9, "Andrew", "Brunswick", "ab@abbb.net", "987-125-2342", "/resources/img/default.png"));
		
	}

}
