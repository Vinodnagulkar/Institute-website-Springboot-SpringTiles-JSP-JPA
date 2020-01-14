package com.ims.util;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.view.document.AbstractPdfView;

import com.ims.model.Student;
import com.lowagie.text.Chunk;
import com.lowagie.text.Document;
import com.lowagie.text.FontFactory;
import com.lowagie.text.Paragraph;
import com.lowagie.text.pdf.PdfWriter;


@Component
public class PdfGenerator extends AbstractPdfView
{

	@Override
	protected void buildPdfDocument(@SuppressWarnings("rawtypes") Map model, Document document, PdfWriter writer, HttpServletRequest req,
			HttpServletResponse resp) throws Exception 
	{
		//String path =req.getContextPath().getRealPath("/");
		
		System.out.println("inside pdfgenerator");
		
		Student student = (Student) model.get("pdf");
		
		Paragraph paragraph1 = new Paragraph(new Chunk("My Details:\n\n",FontFactory.getFont(FontFactory.TIMES_BOLD,20)));
		
		Paragraph paragraph2 = new Paragraph(new Chunk("Name:\t\t\t\t"+student.getName()+"\t\t\t\t"+student.getSurname()+"\n\n"+
				"Mobile:\t\t\t\t"+student.getMobile()+"\n\n"+"Email:\t\t\t\t"+student.getEmail()+"\n\n"+"Gender:\t\t\t\t"+student.getGender()+"\n\nDOB:\t\t\t\t"+student.getDob()+"\n\nEducation:\t\t\t\t"+student.getEducation()+"\n\nCourse:\t\t\t\t"+student.getCourse()+"\n\nAddress:\t\t\t\t"+student.getAddress()+"\n\nUsername:\t\t\t\t"+student.getUsername(),FontFactory.getFont(FontFactory.TIMES_ROMAN,20)));

		
		
		
		
		/*try {

			PdfPTable table = new PdfPTable(3);
			table.setWidthPercentage(100);
			table.setWidths(new int[] {3, 4,3});
			
			Font headFont = FontFactory.getFont(FontFactory.HELVETICA_BOLD);

			PdfPCell hcell;
			PdfPCell cell;
			
			hcell = new PdfPCell(new Phrase("ID", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getId().toString()));
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);

			hcell = new PdfPCell(new Phrase("NAME", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getName()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);

			hcell = new PdfPCell(new Phrase("SURNAME", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(String.valueOf(student.getSurname())));
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			cell.setPaddingRight(5);
			table.addCell(cell);
			
			hcell = new PdfPCell(new Phrase("DOB", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getDob()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
			
			hcell = new PdfPCell(new Phrase("MOBILE", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getMobile()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
			
			hcell = new PdfPCell(new Phrase("EMAIL", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getEmail()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
			
			
			hcell = new PdfPCell(new Phrase("GENDER", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getGender()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
			
			hcell = new PdfPCell(new Phrase("EDUCATION", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getEducation()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
			
			hcell = new PdfPCell(new Phrase("COURSE", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getCourse()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
			
			hcell = new PdfPCell(new Phrase("ADDRESS", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getAddress()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
			
			hcell = new PdfPCell(new Phrase("USERNAME", headFont));
			hcell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(hcell);
			cell = new PdfPCell(new Phrase(student.getUsername()));
			cell.setPaddingLeft(5);
			cell.setVerticalAlignment(Element.ALIGN_MIDDLE);
			cell.setHorizontalAlignment(Element.ALIGN_LEFT);
			table.addCell(cell);
		
		
		 document.add(img);
		//PdfWriter.getInstance(document);
		document.open();
		document.add(table);

		document.close();
		
		}catch (DocumentException ex) {

		}*/
		
		
		  /*PdfReader reader = new PdfReader(src);
	      PdfStamper stamper = new PdfStamper(reader, new FileOutputStream(dest));
		
	      Image image = Image.getInstance(IMG);
	        PdfImage stream = new PdfImage(image, "", null);
	        stream.put(new PdfName("ITXT_SpecialId"), new PdfName("123456789"));
	        PdfIndirectObject ref = stamper.getWriter().addToBody(stream);
	        image.setDirectReference(ref.getIndirectReference());
	        image.setAbsolutePosition(36, 400);
	        PdfContentByte over = stamper.getOverContent(1);
	        over.addImage(image);*/
		
		
		
		/*
		 * Image img =
		 * Image.getInstance(path+"/resources/uploads/"+student.getFilename());
		 * img.setAbsolutePosition(450f, 650f); img.scalePercent(20, 20);
		 * img.setAlignment(Image.ALIGN_TOP); document.add(img);
		 */
		
		document.add(paragraph1);
		document.add(paragraph2);
	
	}


}
