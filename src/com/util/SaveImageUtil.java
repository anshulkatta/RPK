package com.util;

import java.io.File;
import java.util.Properties;

import javax.annotation.PostConstruct;
import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component
public class SaveImageUtil {
	
	
	@Autowired
	private ServletContext servletContext;
	@Value("${directorypath}") 
	public String dir;
	
	public static File rootDir ;
	public final String saveImagePath = "product_gallery_images" ;
	
	@PostConstruct
	public void init() {
		Properties prop = new Properties();
		try {
			prop.load(SaveImageUtil.class.getClassLoader().getResourceAsStream(
					"/config.properties"));
			rootDir = new File(dir);
		} catch (Exception e) {
			e.printStackTrace();
			rootDir = new File(
					servletContext
							.getRealPath("/WEB-INF/product_gallery_images/"));
		}

	}

	public File multipartToFile(MultipartFile multipart[], int id)
			throws Exception {

		if (rootDir == null) {
			rootDir = new File(servletContext.getRealPath("/WEB-INF/product_gallery_images/"));
		}
		File f = new File(getRootDir() + id);
		if(f.mkdir() && multipart != null & multipart.length > 0){
			for(MultipartFile m:multipart) {
				File convFile = new File(f.getPath() + File.separator + m.getOriginalFilename());
				m.transferTo(convFile);
			}
		}
		return f;
	}
	
	public  String getRootDir() {
		if(rootDir == null){
			rootDir = new File( servletContext.getRealPath("/WEB-INF/product_gallery_images/") );
		}
		return rootDir.getAbsolutePath()+"\\";
		
	}

}
