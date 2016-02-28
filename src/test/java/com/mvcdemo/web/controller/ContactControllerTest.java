package com.mvcdemo.web.controller;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.view.InternalResourceView;

import static org.hamcrest.Matchers.*;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

import com.mvcdemo.web.bean.Contact;
import com.mvcdemo.web.bean.MyContact;
import com.mvcdemo.web.repository.ContactRepository;

public class ContactControllerTest {
	
	
	private List<Contact> expectedContacts;
	private Contact expectedContact;
	private int contactId = 1;
	private MockMvc mockMvc;
	
	@Mock
	private ContactRepository mockRepository;
	
	@InjectMocks
	private ContactController mockController;
	
	@Before
	public void setup() {
		
		MockitoAnnotations.initMocks(this);
		expectedContacts = createContactList();
		expectedContact = findContactById(contactId);
		Mockito.when(mockRepository.findAllContacts()).thenReturn(expectedContacts);
		Mockito.when(mockRepository.findContactById(contactId)).thenReturn(expectedContact);
		
	}
	
	@Test
	public void shouldReturnListOfContacts() throws Exception {
		
		mockMvc = MockMvcBuilders.standaloneSetup(mockController)
				.setSingleView(new InternalResourceView("/WEB-INF/view/contacts.jsp")).build();
		mockMvc.perform(get("/contacts"))
			.andExpect(view().name("contacts"))
			.andExpect(model().attributeExists("contacts"))
			.andExpect(model().attribute("contacts", hasItems(expectedContacts.toArray())));
			
	}
	
	
	@Test
	public void shouldReturnContactById() throws Exception {
		
		mockMvc = MockMvcBuilders.standaloneSetup(mockController)
				.setSingleView(new InternalResourceView("/WEB-INF/view/contact.jsp")).build();
		mockMvc.perform(get("/contacts/" + contactId))
			.andExpect(view().name("contact"))
			.andExpect(model().attributeExists("contact"))
			.andExpect(model().attribute("contact", equalTo(expectedContact)));
		
	}
	
	private final List<Contact> createContactList() {
		
		List<Contact> contacts = new ArrayList<Contact>();
		
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
		
		return contacts;
	}
	
	private final Contact findContactById(int id) {
		return expectedContacts.get(id);
	}
}