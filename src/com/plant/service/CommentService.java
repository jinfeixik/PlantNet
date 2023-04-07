package com.plant.service;

import java.util.List;

import com.plant.entity.Comment;


public interface CommentService {
    
	//添加评论
	public void addComment(Comment comment);

	//查询评论
	public List<Comment> findComment(Comment comment);

	//更新评论
	public void updateComment(Comment comment);

}
