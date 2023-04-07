package com.plant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.plant.entity.Comment;
import com.plant.service.CommentService;

@Controller
public class CommentController {
	
	@Autowired
	private CommentService commentService;

	// 添加评论
	@RequestMapping("addComment.form")
	@ResponseBody
	public String addComment(Comment comment) {
		
		commentService.addComment(comment);

		return "true";
	}
	


}