package com.ims.serviceimpl;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ims.model.Student;
import com.ims.model.Transactions;
import com.ims.repository.StudentRepository;
import com.ims.repository.TransactionRepository;
import com.ims.service.TransactionService;

@Service
public class TransactionServiceImpl implements TransactionService {

	@Autowired
	StudentRepository studentRepo;
	
	@Autowired
	TransactionRepository transactionRepository;
	
	DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	Date date = new Date();
	
	@Override
	public boolean saveTransaction(Student student,Transactions transactions) {
		// TODO Auto-generated method stub
		
		Student stud=studentRepo.getOne(student.getId());
		List<Transactions>transactionList=new ArrayList<Transactions>();
		
		if(stud.getRemainingFees()>0) {
		double remainFees=stud.getRemainingFees()-transactions.getPaidAmount();
		stud.setRemainingFees(remainFees);
		transactions.setRemainingFees(remainFees);
	
		transactions.setTransactionDate(dateFormat.format(date));
		
		transactions.setStudent(student);
		transactionList.add(transactions);
		stud.settList(transactionList);
		
		studentRepo.save(stud);
		
		return true;
		}
		return false;
		
	}

	@Override
	public List<Transactions> getAllTransactions() {
		// TODO Auto-generated method stub
		return transactionRepository.findAll();
	}

}
