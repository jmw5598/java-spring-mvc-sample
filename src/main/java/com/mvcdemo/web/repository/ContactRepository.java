package com.mvcdemo.web.repository;

import java.util.List;

import com.mvcdemo.web.bean.Contact;

public interface ContactRepository {

	List<Contact> findAllContacts();
	Contact findContactById(int id);
	Contact addContact(Contact contact);
	
}
