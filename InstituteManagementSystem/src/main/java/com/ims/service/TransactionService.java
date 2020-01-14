package com.ims.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.ims.model.Student;
import com.ims.model.Transactions;

@Service
public interface TransactionService 
{
	public boolean saveTransaction(Student student,Transactions transactions);
	public List<Transactions>getAllTransactions();
}
