package com.myapp.springdemo.service;

import java.util.List;

import com.myapp.springdemo.entity.Contact;

public interface ContactService {

	public List<Contact> getContacts();

	public void saveContact(Contact theContact);

	public Contact getContact(int theId);

	public void deleteContact(int theId);
	
}
