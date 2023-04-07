package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.Comment;

@Component
public interface CommentMapper {
    
	//添加评论
	public void addComment(Comment comment);

	//查找评论
	public List<Comment> findComment(Comment comment);
    
	//更新评论
	public void updateComment(Comment comment);

}
