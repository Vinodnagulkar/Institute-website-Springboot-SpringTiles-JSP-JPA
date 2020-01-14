package com.ims.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.ims.model.Student;

@Repository
public interface StudentRepository extends JpaRepository<Student, Integer> {

	//@Query(value="from student s WHERE s.username=:username AND s.password=:password",nativeQuery = true)
	Student findByUsernameAndPassword(String username, String password);
}
