package com.ims.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.ims.model.Transactions;

public interface TransactionRepository extends JpaRepository<Transactions, Integer>{

}
