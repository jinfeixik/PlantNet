package com.plant.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UeditorController {
	
	/**
     * ueditor上传图片的方法
     * @param upfile 上传图片的文件
     * @param request 
     * @param response
     * @return
     */
    @RequestMapping(value="/uploadimage.form",method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> uploadNewsImg(@RequestParam(value="upfile",required=false) MultipartFile upfile,HttpServletRequest request,HttpServletResponse response) {
        
    	//图片存放地址
        String path = request.getSession().getServletContext().getRealPath("plantResource") + "/";
        //图片后缀
        String last = upfile.getOriginalFilename().substring(upfile.getOriginalFilename().lastIndexOf("."), upfile.getOriginalFilename().length());
        
        String fileName = upfile.getOriginalFilename();
        
        File fileT = new File(path,fileName);
        if(!fileT.exists()){
            fileT.mkdirs();
        }
        Map<String, Object> result = new HashMap<String,Object>();
       
        try {
			upfile.transferTo(fileT);
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        result.put("state", "SUCCESS");
        result.put("url",  path + fileName);
        result.put("original", "");
        result.put("type", last);
        result.put("size", upfile.getSize());
        result.put("title", fileName);
        return result;
    }
    
    
    /**
     * ueditor文件上传方法
     * @param upfile
     * @param request
     * @param response
     * @return
     */
    @RequestMapping(value="/uploadfile.form",method=RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> uploadFile(@RequestParam(value="upfile",required=false) MultipartFile upfile,HttpServletRequest request,HttpServletResponse response) {
        
        String path = request.getSession().getServletContext().getRealPath("plantResource") + "/";
        //附件后缀
        String last = upfile.getOriginalFilename().substring(upfile.getOriginalFilename().lastIndexOf("."), upfile.getOriginalFilename().length());
        
        String fileName = upfile.getOriginalFilename();
        
        File fileT = new File(path,fileName);
        if(!fileT.exists()){
            fileT.mkdirs();
        }
        Map<String, Object> result = new HashMap<String,Object>();
       
        try {
			upfile.transferTo(fileT);
			
		} catch (IllegalStateException | IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

        result.put("state", "SUCCESS");
        result.put("url", path + fileName);
        result.put("original", "");
        result.put("type", last);
        result.put("size", upfile.getSize());
        result.put("title", fileName);
        return result;
    }

}
