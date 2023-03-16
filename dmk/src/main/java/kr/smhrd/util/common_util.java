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
	            System.out.println("썸네일 실패");
	        }
	    }
	    
	    return thumbnailName;
		
	}
	
public String profilecut(File saveFile, File uploadPath, String UploadName, String fileRealName) {
		
		
		String proFileName = "profile_" + UploadName; //썸네일 저장 이름 
	    String extension = fileRealName.substring(fileRealName.lastIndexOf(".")).toLowerCase(); //확장자 
	    //if 이미지 검증
	    if (extension.equals(".jpg") || extension.equals(".jpeg") || extension.equals(".png") || extension.equals(".gif")) {
	        File proFile = new File(uploadPath, proFileName); // 임시 썸네일 생성
	        try {
	            BufferedImage originalImage = ImageIO.read(saveFile);
	            int dw = 50, dh = 50; //썸네일 크기 
	        	int ow = originalImage.getWidth(); //원본 크기
	        	int oh = originalImage.getHeight();
	        	int nw = ow; int nh = (ow * dh) / dw; // 원본 너비를 기준으로 하여 썸네일의 비율로 높이를 계산합니다.
	        	
	        	// 계산된 높이가 원본보다 높다면 crop이 안되므로
	        	// 원본 높이를 기준으로 썸네일의 비율로 너비를 계산합니다.
	        	if(nh > oh) {
	        		nw = (oh * dw) / dh;
	        		nh = oh;
	        	}

	        	// 계산된 크기로 원본이미지를 가운데에서 crop 합니다.
	        	BufferedImage cropImg = Scalr.crop(originalImage, (ow-nw)/2, (oh-nh)/2, nw, nh);

	        	// crop된 이미지로 썸네일을 생성합니다.
	        	BufferedImage destImg = Scalr.resize(cropImg, dw, dh);
	        	
	        	
	            ImageIO.write(destImg, extension.substring(1), proFile);
	        } catch (Exception error) {
	            System.out.println(error.getMessage());
	        }
	    }
	    
	    return proFileName;
		
	}
	
	

	    public String today(){
	        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	        Calendar c1 = Calendar.getInstance();
		 String strToday = sdf.format(c1.getTime());
		 return strToday;
	}
	

}
