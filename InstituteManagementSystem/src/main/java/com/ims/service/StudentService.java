package com.ims.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.ims.model.Student;

@Service
public interface StudentService 
{
	public Student addStudent(Student student, MultipartFile file);
	public List<Student> getStudents();
	public void deleteStudent(Integer id);
	public Student getStudentById(Integer id);
	public Student login(Student student);
}
