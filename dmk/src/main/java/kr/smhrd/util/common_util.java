package kr.smhrd.util;

import java.awt.image.BufferedImage;
import java.io.File;
import java.lang.annotation.Retention;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.List;

import javax.imageio.ImageIO;

import org.imgscalr.Scalr;

public class common_util {
	
	public File makefolder(String uploadFolder) {
		
	    // 현재 날짜 구하기
	    LocalDate now = LocalDate.now();
	    String dateString = now.format(DateTimeFormatter.ofPattern("yyyy/MM/dd"));
	    
	    // 날짜별로 디렉토리 생성, uploadPath 설정
	    File uploadPath = new File(uploadFolder, dateString);
	    if(!uploadPath.exists()) uploadPath.mkdirs();
		
		return uploadPath;
	}
	
	public String thumb(File saveFile, File uploadPath, String UploadName, String fileRealName) {
		
		// 파일 저장 후 썸네일 생성
		String thumbnailName = "thumb_" + UploadName;
	    String extension = fileRealName.substring(fileRealName.lastIndexOf(".")).toLowerCase();
	    if (extension.equals(".jpg") || extension.equals(".jpeg") || extension.equals(".png") || extension.equals(".gif")) {
	        File thumbnailFile = new File(uploadPath, thumbnailName);
	        try {
	            BufferedImage originalImage = ImageIO.read(saveFile);
	            BufferedImage thumbnailImage = Scalr.resize(originalImage, Scalr.Method.AUTOMATIC, Scalr.Mode.FIT_TO_WIDTH, 384);
	            ImageIO.write(thumbnailImage, extension.substring(1), thumbnailFile);
	        } catch (Exception error) {
	            System.out.println(error.getMessage());
	        }
	    }
	    
	    return thumbnailName;
		
	}
	
	

	    public String today(){
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	        Calendar c1 = Calendar.getInstance();
		 String strToday = sdf.format(c1.getTime());
		 return strToday;
	}
	

}
