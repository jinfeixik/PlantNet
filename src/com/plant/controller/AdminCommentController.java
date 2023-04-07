package com.plant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Comment;
import com.plant.service.CommentService;

@Controller
public class AdminCommentController {

	@Autowired
	private CommentService commentService;

	// 跳转评论主页
	@RequestMapping("comment-list.form")
	public String commentList(ModelMap model, Comment comment) {

		model.put("commentLists", commentService.findComment(comment));

		return "hui/comment-list";
	}

	// 更新评论状态
	@RequestMapping("updateCommonState.form")
	public String updateCommonState(ModelMap model, Comment comment) {

		// 执行更新
		commentService.updateComment(comment);

		return "hui/article-list";
	}

}
