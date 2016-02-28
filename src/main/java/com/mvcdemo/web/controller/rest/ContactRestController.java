package com.mvcdemo.web.controller.rest;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.mvcdemo.web.bean.Contact;
import com.mvcdemo.web.repository.ContactRepository;

@RestController
@RequestMapping("/api/contacts")
public class ContactRestController {
	
	private ContactRepository contactRepository;
	
	@Autowired
	public ContactRestController(ContactRepository contactRepository) {
		
		this.contactRepository = contactRepository;
		
	}
	
	@RequestMapping(method = RequestMethod.GET, produces = "application/json")
	public List<Contact> contacts() {
		
		return contactRepository.findAllContacts();
	
	}
	
	@RequestMapping(value = "/{id}", method = RequestMethod.GET, produces = "application/json")
	public Contact contactById(@PathVariable(value="id") int id) {
		
		return contactRepository.findContactById(id);
	
	}
}
