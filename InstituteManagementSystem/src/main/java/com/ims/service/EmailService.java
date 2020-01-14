package com.ims.service;

import org.springframework.stereotype.Service;

import com.ims.model.Email;

@Service
public interface EmailService 
{
	public boolean addMail(Email email);
}
