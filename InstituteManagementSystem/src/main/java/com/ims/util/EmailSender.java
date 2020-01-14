package com.ims.util;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Component;

import com.ims.model.Email;
import com.ims.model.Student;

@Component
public class EmailSender 
{
	@Autowired
	JavaMailSender javaMailSender;
	
	public void sendRegistarationMail(Student student) {
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			helper.setTo(student.getEmail());
			helper.setText("Hii " + student.getName() + " Your registration has been successfully completed.Thank you.!");
			helper.setSubject("Registration Success...");
			javaMailSender.send(message);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}
	
	
	public void composeEmail(Email email) 
	{
		MimeMessage message = javaMailSender.createMimeMessage();
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message, true);

			helper.setTo(email.getTo());
			helper.setText(email.getMessage());
			helper.setSubject(email.getSubject());
			/*
			 * ClassPathResource classPathResource = new
			 * ClassPathResource("images/inst.jpg"); 
			 * helper.addAttachment("images/inst.jpg",
			 * classPathResource);
			 */
			javaMailSender.send(message);
		} catch (MessagingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
