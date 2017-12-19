package com.p2p.controller.back;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.p2p.util.QRcode;

/**
 * 开发人:汪栋才
 * 2017-11-13
 * 此conteroller是一些文件上传或者文件下载的工具类
 * */
@Controller
public class UtilController {

	/**
	 * 生成二维码并下载
	 * */
	@RequestMapping("/createQRcode")
	@ResponseBody
	public static String createQRcode(String url,HttpServletRequest request,HttpServletResponse response) {
		if(url.length()==0) {
			url = "https://www.baidu.com";
		}
		//利用时间对文件名进行重名
		SimpleDateFormat df  = new SimpleDateFormat("yyyMMddHHmmssSSS");
				
		//新文件名
		String newFilename = df.format(new Date());
		//文件后缀
		String suffix = ".png";
		
		String contextPath = request.getSession().getServletContext().getRealPath("/uploadFile/");
		
		//把路径中的包括\\全部换成/
		contextPath = contextPath.replace("\\","/");
		try {
			QRcode.createQRCode(url, new File(contextPath+newFilename+suffix));
			System.out.println("解密的URL是"+QRcode.readQRCode(contextPath+newFilename+suffix));
		}catch (Exception e) {
			e.printStackTrace();
		}
		/**
		 * 这里返回文件路径
		 * */
		String pathss = "/Finances/uploadFile/"+newFilename+suffix;
		return pathss;
	}
	
	
	/**
	 * 文件上传
	 * */
	@RequestMapping("uploadex")
	@ResponseBody
	public static void upload(HttpServletRequest request,String fileName) throws Exception{
		MultipartHttpServletRequest msr = (MultipartHttpServletRequest)request;
		
		//拿到文件对象
		CommonsMultipartFile mf = (CommonsMultipartFile)msr.getFile(fileName);
		
		//拿到文件名称
		String exfileName = mf.getOriginalFilename();
		
		//截取文件名称。取从.号开始到后面的所有名称
		String suffix =exfileName.substring(exfileName.indexOf("."));
		
		//利用时间对文件名进行重名
		SimpleDateFormat df  = new SimpleDateFormat("yyyMMddHHmmssSSS");
		
		//新文件名
		String newFilename = df.format(new Date());
		
		//拿到全局路径
		String contextPath = request.getSession().getServletContext().getRealPath("/excel");
		
		//把路径中的包括\\全部换成/
		contextPath = contextPath.replace("\\","/");
		
		//上传文件
		mf.transferTo(new File(contextPath+newFilename+suffix));
	} 
	
	/**
	 * 文件下载
	 * */
	public static void downLoadFile(String filePath,HttpServletRequest request,HttpServletResponse response) {
		//文件下载
		 File file = new File(filePath);
		 String filenames = file.getName();
	     InputStream inputStream;
       try {
           inputStream = new BufferedInputStream(new FileInputStream(file));
           byte[] buffer = new byte[inputStream.available()];
           inputStream.read(buffer);
           inputStream.close();
           response.reset();
           // 先去掉文件名称中的空格,然后转换编码格式为utf-8,保证不出现乱码,这个文件名称用于浏览器的下载框中自动显示的文件名
           response.addHeader("Content-Disposition", "attachment;filename=" + new String(filenames.replaceAll(" ", "").getBytes("utf-8"), "iso8859-1"));
           response.addHeader("Content-Length", "" + file.length());
           OutputStream os = new BufferedOutputStream(response.getOutputStream());
           response.setContentType("application/octet-stream");
           os.write(buffer);// 输出文件
           os.flush();
           os.close();
	       boolean isdelete =  file.delete();
	   	   System.out.println("删除文件是"+isdelete);
       } catch (Exception e) {
           e.printStackTrace();
       }	
	}
	
}
