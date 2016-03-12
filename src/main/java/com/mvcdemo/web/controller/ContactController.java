package com.mvcdemo.web.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.mvcdemo.web.bean.Contact;
import com.mvcdemo.web.repository.ContactRepository;

@Controller
@RequestMapping("/contacts")
public class ContactController {
	
	private ContactRepository contactRepository;
	
	@Autowired
	public ContactController(ContactRepository contactRepository) {
		
		this.contactRepository = contactRepository;
		
	}
	
	@RequestMapping(method=RequestMethod.GET)
	public String contacts(Model model) {
		
		model.addAttribute("contacts", contactRepository.findAllContacts());
		return "contacts";
		
	}
	
	@RequestMapping(value="/{id}", method=RequestMethod.GET)
	public String contactById(@PathVariable("id") int id, Model model) {
		
		model.addAttribute("contact", contactRepository.findContactById(id));
		return "contact";
		
	}
	
	@RequestMapping(value="/add_form", method=RequestMethod.GET)
	public String contactAddForm() {
		
		return "addForm";
		
	}
	
	@RequestMapping(value="/add", method=RequestMethod.POST)
	public String contactAdd(@Valid Contact contact, Errors errors) {
		
		if(errors.hasErrors()) {
			// add errors to model to display errors on form.
			return "addForm";
			
		}
		
		contact = contactRepository.addContact(contact);
		return "redirect:/contacts/" + contact.getId();
		
	}
	
}
