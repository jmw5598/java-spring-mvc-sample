package com.mvcdemo.web.controller.rest;

import java.util.ArrayList;
import java.util.List;

import org.junit.Before;
import org.junit.Ignore;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.Mockito;
import org.mockito.MockitoAnnotations;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import static org.hamcrest.Matchers.*;

import com.mvcdemo.web.bean.Contact;
import com.mvcdemo.web.repository.ContactRepository;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

public class ContactRestControllerTest {
	
	private MockMvc mockMvc;
	private List<Contact> expectedContacts;
	private Contact expectedContact;
	private int contactId = 0;
	
	@InjectMocks
	private ContactRestController mockController;
	
	@Mock
	private ContactRepository mockRepository;
	
	
	@Before
	public void setup() {
		
		expectedContacts = createContactList();
		expectedContact = findContactById(contactId);
		MockitoAnnotations.initMocks(this);
		mockMvc = MockMvcBuilders.standaloneSetup(mockController).build();
		
	}
	@Ignore
	@Test
	public void shouldReturnAllContactsJson() throws Exception {
		
		Mockito.when(mockRepository.findAllContacts()).thenReturn(expectedContacts);
		mockMvc.perform(get("/api/contacts"))
			.andExpect(status().isOk())
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(jsonPath("$", hasSize(10)))
			.andExpect(jsonPath("$[0].id", is(0)))
			.andExpect(jsonPath("$[0].firstName", is("Jason")))
			.andExpect(jsonPath("$[0].lastName", is("White")))
			.andExpect(jsonPath("$[0].email", is("jw@gmail.com")))
			.andExpect(jsonPath("$[0].phone", is("212-234-6425")))
			.andExpect(jsonPath("$[0].imgUrl", is("/resources/img/male1.png")));
		
	}
	
	@Ignore
	@Test
	public void shouldReturnContactByIdJson() throws Exception {
		
		Mockito.when(mockRepository.findContactById(contactId)).thenReturn(expectedContact);
		mockMvc.perform(get("/api/contacts/" + contactId))
			.andExpect(status().isOk())
			.andExpect(content().contentType(MediaType.APPLICATION_JSON))
			.andExpect(jsonPath("$.id", is(0)))
			.andExpect(jsonPath("$.firstName", is("Jason")))
			.andExpect(jsonPath("$.lastName", is("White")))
			.andExpect(jsonPath("$.email", is("jw@gmail.com")))
			.andExpect(jsonPath("$.phone", is("212-234-6425")))
			.andExpect(jsonPath("$.imgUrl", is("/resources/img/male1.png")));
		
	}
	
	
	private final List<Contact> createContactList() {
		
		List<Contact> contacts = new ArrayList<Contact>();
		
		contacts.add( new Contact(0, "Dillard", "White", "jw@gmail.com", "212-234-6425", "/resources/img/male1.png") );
		contacts.add( new Contact(1, "Jane", "Smith", "js@gmail.com", "213-543-1214", "/resources/img/female1.png"));
		contacts.add( new Contact(2, "Martin", "Sherwood", "ms@yahoo.com", "313-425-1211", "/resources/img/male2.png"));
		contacts.add( new Contact(3, "Alex", "Robinson", "ar@hotmail.com", "242-344-2356", "/resources/img/default.png"));
		contacts.add( new Contact(4, "John", "Quesalupa", "jq@yahoo.com", "998-898-4233", "/resources/img/male3.png"));
		contacts.add( new Contact(5, "Michelle", "Branch", "mb@mbranch.comd", "248-313-1255", "/resources/img/female2.png"));
		contacts.add( new Contact(6, "Linda", "Cardellini", "lc@gmail.com", "123-123-1234", "/resources/img/default.png"));
		contacts.add( new Contact(7, "Jimmy", "Changa", " jc1@yahoo.com", "586-323-1245", "/resources/img/male4.png"));
		contacts.add( new Contact(8, "Deloris", "Johnson", "dj@djohnson.net", "213-124-2857", "/resources/img/female3.png"));
		contacts.add( new Contact(9, "Andrew", "Brunswick", "ab@abbb.net", "987-125-2342", "/resources/img/default.png"));
		
		return contacts;
	}
	
	private final Contact findContactById(int id) {
		return expectedContacts.get(id);
	}
}
