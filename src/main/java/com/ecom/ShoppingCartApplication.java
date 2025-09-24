package com.ecom;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

import com.ecom.model.UserDtls;
import com.ecom.service.UserService;

@SpringBootApplication
public class ShoppingCartApplication implements CommandLineRunner {

	@Autowired
	private UserService userService;

	public static void main(String[] args) {
		SpringApplication.run(ShoppingCartApplication.class, args);
	}

	@Override
	public void run(String... args) throws Exception {
		String adminEmail = "admin@gmail.com";
		String adminPassword = "admin123";
		if (!userService.existsEmail(adminEmail)) {
			UserDtls admin = new UserDtls();
			admin.setName("Admin");
			admin.setEmail(adminEmail);
			admin.setPassword(adminPassword);
			admin.setRole("ROLE_ADMIN");
			admin.setIsEnable(true);
			admin.setAccountNonLocked(true);
			admin.setFailedAttempt(0);
			admin.setMobileNumber("9999999999");
			admin.setAddress("Admin Address");
			admin.setCity("Admin City");
			admin.setState("Admin State");
			admin.setPincode("000000");
			admin.setProfileImage("default.jpg");
			userService.saveAdmin(admin);
			System.out.println("Default admin user created: admin@gmail.com / admin123");
		} else {
			System.out.println("Admin user already exists.");
		}
	}
}
