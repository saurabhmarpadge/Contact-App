package com.myapp.springdemo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.myapp.springdemo.entity.Contact;
import com.myapp.springdemo.service.ContactService;

@Controller
@RequestMapping("/contact")
public class ContactController {
	
	@Autowired
	private ContactService contactService;
	
	@GetMapping("/list")
	public String listCustomers(Model theModel) {
		
		// get contacts
		List<Contact> theContacts = contactService.getContacts();
				
		// add the contacts 
		theModel.addAttribute("contacts", theContacts);
		
		return "list-contacts";
	}
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		Contact theContact = new Contact();
		
		theModel.addAttribute("contact", theContact);
		
		return "contact-form";
	}
	
	@PostMapping("/saveContact")
	public String saveContact(@ModelAttribute("contact") Contact theContact) {
		
		contactService.saveContact(theContact);
		
		return "redirect:/contact/list";
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("contactId") int theId,
									Model theModel) {
		
		// get contacts
		Contact theContact = contactService.getContact(theId);	
		
		// set contacts
		theModel.addAttribute("contact", theContact);
		
		// send contacts	
		return "contact-form";
	}
	
	@GetMapping("/showForm")
	public String showForm(@RequestParam("contactId") int theId,
									Model theModel) {
		
		// get contact
		Contact theContact = contactService.getContact(theId);	
		
		// set contact
		theModel.addAttribute("contact", theContact);
		
		// send over to our form		
		return "contact-form-view";
	}
	
	@GetMapping("/delete")
	public String deleteContact(@RequestParam("contactId") int theId) {
		
		// delete contacts
		contactService.deleteContact(theId);
		
		return "redirect:/contact/list";
	}
}


