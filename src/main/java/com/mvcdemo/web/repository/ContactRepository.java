package com.mvcdemo.web.repository;

import java.util.List;

import com.mvcdemo.web.bean.Contact;

public interface ContactRepository {

	public List<Contact> findAllContacts();
	public Contact findContactById(int id);
	
}
