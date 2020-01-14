package com.ims.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ims.model.Email;
import com.ims.repository.EmailRepository;
import com.ims.service.EmailService;

@Service
public class EmailServiceImpl implements EmailService {

	@Autowired
	EmailRepository emailRepo;
	
	@Override
	public boolean addMail(Email email) {
		// TODO Auto-generated method stub
		return false;
	}

}
