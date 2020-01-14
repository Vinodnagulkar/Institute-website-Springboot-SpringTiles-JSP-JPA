package com.ims.util;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class FileUploader 
{
	public int fileUpload(MultipartFile file, HttpServletRequest req) throws IOException {
		int flag = 0;
		// Save file on system
		if (!file.getOriginalFilename().isEmpty()) {
			@SuppressWarnings("deprecation")
			String path = req.getRealPath("/");
			BufferedOutputStream outputStream = new BufferedOutputStream(
					new FileOutputStream(new File(path + "/resources/uploads/" + file.getOriginalFilename())));
			outputStream.write(file.getBytes());
			System.out.println(file.getOriginalFilename());
			outputStream.flush();
			outputStream.close();
			flag = 1;
			return flag;
		} else
			return flag;
}
}
