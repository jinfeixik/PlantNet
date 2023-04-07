package com.plant.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.file.Files;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItem;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

//文件上传工具类
public class UpLoadFileUtil {

	// 图片文件上传
	public String fileload(MultipartFile myFile, HttpServletRequest request) {

		String filePath = request.getSession().getServletContext().getRealPath("plantResource") + "/"; // 定义上传文件的存放位置
		System.out.println(filePath);
		String fileName = myFile.getOriginalFilename(); // 获取上传文件的名字
		// 判断文件夹是否存在,不存在则创建
		File file = new File(filePath);

		if (!file.exists()) {
			file.mkdirs();
		}

		String newFilePath = filePath + fileName; // 新文件的路径

		try {
			myFile.transferTo(new File(newFilePath)); // 将传来的文件写入新建的文件

		} catch (IllegalStateException | IOException e) {
			e.printStackTrace();
		}

		return null;
	}
	
	//普通文件上传
	public String normalFileLoad(MultipartFile file, HttpServletRequest request) {
		// 获取文件名称
		String fileName = file.getOriginalFilename();

		// 设置上传路径
		// String path = "D:/test1/";
		ServletContext sc = request.getSession().getServletContext();

		String path = sc.getRealPath("plantResource") + "/"; // 设定文件保存的目录
		
		System.out.println(path);

		// 文件上传
		File f = new File(path);

		// 判断路径是否存在，不存在则创建
		if (!f.exists()) {
			f.mkdirs();
		}
		// 判断上传文件是否为空
		if (!file.isEmpty()) {
			try {
				FileOutputStream fos = new FileOutputStream(path + fileName);
				InputStream in = file.getInputStream();
				int a = 0;
				if ((a = in.read()) != -1) {
					fos.write(a);
				}
				in.close();
				fos.close();
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		return null;
	}

	// File类型转MultipartFile类型
	public MultipartFile FileToMultipartFile(HttpServletRequest request)
			throws IOException {
		String filePath = "真实路径";
		File file = new File(filePath);
		// 需要导入commons-fileupload的包
		FileItem fileItem = new DiskFileItem("copyfile.txt",
				Files.probeContentType(file.toPath()), false, file.getName(),
				(int) file.length(), file.getParentFile());
		byte[] buffer = new byte[4096];
		int n;
		try (InputStream inputStream = new FileInputStream(file);
				OutputStream os = fileItem.getOutputStream()) {
			while ((n = inputStream.read(buffer, 0, 4096)) != -1) {
				os.write(buffer, 0, n);
			}
			// 也可以用IOUtils.copy(inputStream,os);
			MultipartFile multipartFile = new CommonsMultipartFile(fileItem);
			return multipartFile;
		} catch (IOException e) {
			e.printStackTrace();
			return null;
		}
	}

}
