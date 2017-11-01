package com.myapp.springdemo.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.myapp.springdemo.dao.ContactDAO;
import com.myapp.springdemo.entity.Contact;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO contactDAO;
	
	@Override
	@Transactional
	public List<Contact> getContacts() {
		return contactDAO.getContacts();
	}

	@Override
	@Transactional
	public void saveContact(Contact theContact) {
		contactDAO.saveContact(theContact);	
	}

	@Override
	@Transactional
	public Contact getContact(int theId) {
		return contactDAO.getContact(theId);	
	}

	@Override
	@Transactional
	public void deleteContact(int theId) {
		contactDAO.deleteContact(theId);
	}
	
	
}





