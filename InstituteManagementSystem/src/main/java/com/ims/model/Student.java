package com.ims.model;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

@Entity
@Table
@Component
public class Student {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Integer id;
	private String name;
	private String surname;
	private String email;
	private String mobile;
	private String dob;
	private String education;
	private String gender;
	private String course;
	private String address;
	private String username;
	private String password;
	private double totalFees;
	private double remainingFees;
	private String filename;
	
	@OneToMany(cascade = CascadeType.ALL,mappedBy="student")
	private List<Transactions>tList;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMobile() {
		return mobile;
	}

	public void setMobile(String mobile) {
		this.mobile = mobile;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getEducation() {
		return education;
	}

	public void setEducation(String education) {
		this.education = education;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getCourse() {
		return course;
	}

	public void setCourse(String course) {
		this.course = course;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public double getTotalFees() {
		return totalFees;
	}

	public void setTotalFees(double totalFees) {
		this.totalFees = totalFees;
	}

	public String getFilename() {
		return filename;
	}

	public void setFilename(String filename) {
		this.filename = filename;
	}

	public List<Transactions> gettList() {
		return tList;
	}

	public void settList(List<Transactions> tList) {
		this.tList = tList;
	}

	public double getRemainingFees() {
		return remainingFees;
	}

	public void setRemainingFees(double remainingFees) {
		this.remainingFees = remainingFees;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", surname=" + surname + ", email=" + email + ", mobile="
				+ mobile + ", dob=" + dob + ", education=" + education + ", gender=" + gender + ", course=" + course
				+ ", address=" + address + ", username=" + username + ", password=" + password + ", totalFees="
				+ totalFees + ", remainingFees=" + remainingFees + ", filename=" + filename + ", tList=" + tList + "]";
	}

	


}