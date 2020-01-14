
package com.ims.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="transactions")
public class Transactions
{
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer transactionId;
	private double paidAmount;
	private double remainingFees;
	private String transactionDate;
	

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="id")
	private Student student;

	public Integer getTransactionId() {
		return transactionId;
	}

	public void setTransactionId(Integer transactionId) {
		this.transactionId = transactionId;
	}

	public double getPaidAmount() {
		return paidAmount;
	}

	public void setPaidAmount(double paidAmount) {
		this.paidAmount = paidAmount;
	}

	public double getRemainingFees() {
		return remainingFees;
	}

	public void setRemainingFees(double remainingFees) {
		this.remainingFees = remainingFees;
	}

	

	public String getTransactionDate() {
		return transactionDate;
	}

	public void setTransactionDate(String transactionDate) {
		this.transactionDate = transactionDate;
	}

	public Student getStudent() {
		return student;
	}

	public void setStudent(Student student) {
		this.student = student;
	}

	@Override
	public String toString() {
		return "Transactions [transactionId=" + transactionId + ", paidAmount=" + paidAmount + ", remainingFees="
				+ remainingFees + ", transactionDate=" + transactionDate + ", student=" + student + "]";
	}
	
	
	
	
}
