package com.mvcdemo.web.controller;

import org.junit.Before;
import org.junit.Test;
import org.mockito.InjectMocks;
import org.mockito.MockitoAnnotations;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.servlet.view.InternalResourceView;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.*;

public class HomeControllerTest {
	
	@InjectMocks
	private HomeController mockController;
	
	@Before
	public void setup() {
		
		MockitoAnnotations.initMocks(this);
		
	}
	
	@Test
	public void expectHomePage() throws Exception {
		
		MockMvc mockMvc = MockMvcBuilders.standaloneSetup(mockController)
				.setSingleView(new InternalResourceView("/WEB-INF/views/home.jsp")).build();
		//mockMvc.perform(get("/")).andExpect(view().name("home"));
		mockMvc.perform(get("/home")).andExpect(view().name("home"));
		
	}
	
	
}
