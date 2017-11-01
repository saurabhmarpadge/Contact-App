package com.myapp.springdemo.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.myapp.springdemo.entity.Contact;

@Repository
public class ContactDAOImpl implements ContactDAO {

	@Autowired
	private SessionFactory sessionFactory;
			
	@Override
	public List<Contact> getContacts() {
	
		Session currentSession = sessionFactory.getCurrentSession();

		Query<Contact> theQuery = 
				currentSession.createQuery("from Contact order by firstName",
											Contact.class);

		List<Contact> contacts = theQuery.getResultList();
	
		return contacts;
	}


	@Override
	public void saveContact(Contact theContact) {

		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(theContact); 
	}


	@Override
	public Contact getContact(int theId) {

		Session currentSession = sessionFactory.getCurrentSession();

		Contact theContact = currentSession.get(Contact.class, theId);
		
		return theContact;
	}



	@Override
	public void deleteContact(int theId) {

		Session currentSession = sessionFactory.getCurrentSession();

		Query theQuery = 
				currentSession.createQuery("delete from Contact where id=:contactId");
		theQuery.setParameter("contactId", theId);
		
		theQuery.executeUpdate();		
	}




}






