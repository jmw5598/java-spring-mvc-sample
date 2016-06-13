package com.mvcdemo.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		
		http
		.authorizeRequests()
			.antMatchers("/").permitAll()
			.anyRequest().authenticated()
		.and()
		.formLogin()
			.loginPage("/login")
			.usernameParameter("username")
			.passwordParameter("password")
			.defaultSuccessUrl("/home")
			.failureUrl("/login?error=true")
			.permitAll()
		.and()
		.logout()
			.logoutSuccessUrl("/")
			.permitAll()
		.and()
		.csrf();
		
	}
	
	@Override
	public void configure(WebSecurity web) throws Exception {
		
		web
			.ignoring()
				.antMatchers("/resources/**", "/login?language=en", "/login?language=es");
		
	}
	
	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
		
		auth
			.inMemoryAuthentication()
				.withUser("jason").password("white").roles("USER");
		
	}
	
}
