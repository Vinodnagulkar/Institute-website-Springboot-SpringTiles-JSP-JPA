package com.ims;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.ims")
public class InstituteManagementSystemApplication {

	public static void main(String[] args) {
		SpringApplication.run(InstituteManagementSystemApplication.class, args);
		
		System.out.println("\n\n Institute Management System App started...");
	}

}
