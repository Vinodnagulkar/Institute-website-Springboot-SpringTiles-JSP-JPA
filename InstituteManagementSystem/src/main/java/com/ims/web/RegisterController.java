package com.ims.web;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ims.model.Email;
import com.ims.model.Student;
import com.ims.model.Transactions;
import com.ims.service.EmailService;
import com.ims.service.StudentService;
import com.ims.service.TransactionService;
import com.ims.util.EmailSender;
import com.ims.util.FileUploader;
import com.ims.util.PdfGenerator;

@Controller
public class RegisterController {

	DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
	Date date = new Date();
	
	  

	@Autowired 
	StudentService studentService;
	 
	@Autowired
	EmailService emailService;
	
	@Autowired
	TransactionService transactionService;

	@Autowired
	EmailSender emailSender;
	
	@Autowired
	FileUploader fileUploader;
	
	@Autowired
	PdfGenerator pdfGenerator;
	
	  @RequestMapping("/") 
	  public String indexOpener() 
	  { 
		  System.out.println("Inside index opener...");
		  return "redirect:adminindex"; 
		  
	  }
	 
	
	@RequestMapping("adminindex")
	public String adminhome(HttpSession session) {

		session.removeAttribute("stud");
		session.setAttribute("stud", new Student());
		return "commondashboardtiles";
	}

	@RequestMapping("studentindex")
	public String studenthome() {
		return "studentdashboardtiles";
	}

	@RequestMapping("login")
	public String loginopener(Model model) {
		model.addAttribute("loginForm", new Student());
		return "logintiles";

	}

	@RequestMapping("loginStudent")
	public String login(@ModelAttribute("loginForm") Student student, HttpSession session) {

		Student stud = studentService.login(student);
		if (stud != null) {
			session.setAttribute("stud", stud);
			return "studentdashboardtiles";
		}

		return "redirect:login";

	}

	@RequestMapping("getinfo")
	public String getStudentinfo() {

		return "studinfotiles";

	}

	@RequestMapping("aboutme")
	public String aboutmepage() {

		return "aboutmetiles";

	}

	@RequestMapping("aboutadmin")
	public String aboutadminpage() {

		return "aboutadmintiles";

	}

	@RequestMapping("register")
	public String registerView(Model model) {
		model.addAttribute("studentForm", new Student());
		return "registertiles";

	}

	@RequestMapping("submitStudent")
	public String registration(Model model, @ModelAttribute("studentForm") Student student, BindingResult result,
			@RequestParam("filename") MultipartFile file,HttpServletRequest req, RedirectAttributes attributes)
			throws IOException {

		Student stud= studentService.addStudent(student,file);
		if (stud!=null) 
		{
			fileUploader.fileUpload(file, req);
			//emailSender.sendRegistarationMail(student);
			attributes.addFlashAttribute("success", "STUDENT REGISTERD SUCCESSFULY ....");
		} else {
			attributes.addFlashAttribute("error", "FAILED TO REGISTER...");
		}
		return "redirect:adminindex";
	}
	
	@ModelAttribute("sList")
	public List<Student> getList() {

		return studentService.getStudents();
	}
	
	/*
	 * @RequestMapping("tList") public List<Transactions> getTransactionList(Model
	 * model,HttpSession httpSession) {
	 * 
	 * return ""; }
	 */

	@RequestMapping("displayStudent")
	public String displayStudent(Model model) {

		return "displaytiles";

	}

	@RequestMapping("deleteStudent")
	public String deleteStudent(Model model, @RequestParam("id") int id, RedirectAttributes attributes) {

			studentService.deleteStudent(id);
			attributes.addFlashAttribute("delete", "Deletion success....");
			return "redirect:loginStudent";
	}

	@RequestMapping("editStudent")
	public String updateStudent(Model model, @RequestParam("id") int id) {
		
		Student stud=studentService.getStudentById(id);
		model.addAttribute("studentForm", stud);
		return "updatestudenttiles";

	}

	@RequestMapping("studentFees")
	public String feesformOpener(Model model,HttpSession httpSession,RedirectAttributes attributes) {
		
		Student student=(Student) httpSession.getAttribute("stud");
		Student stud=studentService.getStudentById(student.getId());
		if(stud.getRemainingFees()!=0) {
		model.addAttribute("feesForm", new Transactions());
		return "feestiles";}
		else
			attributes.addFlashAttribute("feesError", "Fees paid! No fees is remaining.");
			return "redirect:studentindex";
	}

	@RequestMapping("payfees")
	public String feespay(Model model, HttpSession httpSession, @ModelAttribute("feesForm") Transactions transactions,RedirectAttributes attributes) {
		
		Student student=(Student) httpSession.getAttribute("stud");
	
		boolean result=transactionService.saveTransaction(student,transactions);
		if(result)
		return "redirect:studentindex";
		else {
			
			attributes.addFlashAttribute("error", "Fees paid! No fees is remaining.");
			return "redirect:studentindex";
			}
	}

	@RequestMapping("composeMail")
	public String mailOpener(Model model) {
		model.addAttribute("mailForm", new Email());
		return "mailtiles";
	}

	@RequestMapping("studentjava")
	public String studentjavaPageopener(Model model) {
		return "studentjavatiles";
	}

	@RequestMapping("studenttesting")
	public String studenttestingPageopener(Model model) {
		return "studenttestingtiles";
	}

	@RequestMapping("adminjava")
	public String adminjavaPageopener(Model model) {
		return "adminjavatiles";
	}

	@RequestMapping("admintesting")
	public String admintestingPageopener(Model model) {
		return "admintestingtiles";
	}

	@RequestMapping("sendMail")
	public String sendComposedMail(@ModelAttribute("mailForm") Email email, RedirectAttributes attributes) {
		
		emailSender.composeEmail(email);
		
		boolean status = emailService.addMail(email);
		if (status == true) {
			attributes.addFlashAttribute("Success", "Mail Successfully sent..!!");
			return "redierct:/";
		} else {
			attributes.addFlashAttribute("error", "Mail sending failed..!");
			return "redierct:composeMail";
		}
	}

	@RequestMapping(value="createpdf", method=RequestMethod.GET)
	public String generatePdf(Model model,@RequestParam("id") Integer id)
	{
		System.out.println(id);
		
		Student student=studentService.getStudentById(id);
		
		System.out.println(student);
		
		model.addAttribute("pdf", student); 
		
		return "pdfView";
	}
	
	@RequestMapping("feesTransactions")
	public String getFeesTransaction(Model model,HttpSession httpSession)
	{
		
		Student student=(Student) httpSession.getAttribute("stud");
		Student stud=studentService.getStudentById(student.getId());
		model.addAttribute("tList", stud.gettList());
		return "transactiontiles";
	
	}

		/*
		 * @InitBinder("studentForm") public void studentValidator(WebDataBinder binder)
		 * { binder.setValidator(new StudentValidation()); }
		 */
	
}