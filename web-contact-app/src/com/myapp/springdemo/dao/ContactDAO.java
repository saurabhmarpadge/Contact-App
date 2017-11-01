package com.myapp.springdemo.dao;

import java.util.List;

import com.myapp.springdemo.entity.Contact;

public interface ContactDAO {

	public List<Contact> getContacts();

	public void saveContact(Contact theContact);

	public Contact getContact(int theId);

	public void deleteContact(int theId);
	
}
