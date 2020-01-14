package com.ims.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ims.model.Email;

@Repository
public interface EmailRepository extends JpaRepository<Email, Integer>
{

}
