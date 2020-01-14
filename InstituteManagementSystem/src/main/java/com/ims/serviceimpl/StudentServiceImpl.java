package com.ims.serviceimpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ims.model.Student;
import com.ims.repository.StudentRepository;
import com.ims.service.StudentService;

@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	StudentRepository studentRepo;
	
	@Override
	public Student addStudent(Student student,MultipartFile file ) {
		// TODO Auto-generated method stub
		
		if (student.getCourse().equals("JAVA")) {
			double total = 50000;
			student.setTotalFees(total);
			student.setRemainingFees(total);
		} else if (student.getCourse().equals("TESTING")) {
			double total = 30000;
			student.setTotalFees(total);
			student.setRemainingFees(total);
		}
		student.setFilename(file.getOriginalFilename());
		
		return studentRepo.save(student);
	}

	@Override
	public List<Student> getStudents() {
		// TODO Auto-generated method stub
		return studentRepo.findAll();
	}

	@Override
	public void deleteStudent(Integer id) {
		// TODO Auto-generated method stub
		studentRepo.deleteById(id);
	}

	@Override
	public Student getStudentById(Integer id) {
		// TODO Auto-generated method stub
		return studentRepo.getOne(id);
	}

	@Override
	public Student login(Student student) {
		// TODO Auto-generated method stub
		return studentRepo.findByUsernameAndPassword(student.getUsername(), student.getPassword());
	}

}
