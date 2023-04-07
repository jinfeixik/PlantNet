package com.plant.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.dao.CommentMapper;
import com.plant.entity.Comment;
import com.plant.entity.User;
import com.plant.service.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private CommentMapper commentDao;

	@Autowired
	private HttpSession session;

	@Override
	public void addComment(Comment comment) {
		// TODO Auto-generated method stub

		// 用户编号
		User user = (User) session.getAttribute("user");
		comment.setUserID(user.getUserID());

		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);

		// 设置评论时间等于当前时间
		comment.setCommentTime(nowDate);

		// 设置评论状态等于可用
		comment.setCommentState("显示");

		// 设置回复编号等于0（可拓展功能）
		comment.setReplyID(0);

		// 设置评论星级等于0（可拓展功能）
		comment.setCommentStar(0);

		// 插入花草信息
		commentDao.addComment(comment);

	}

	@Override
	public List<Comment> findComment(Comment comment) {
		// TODO Auto-generated method stub
		return commentDao.findComment(comment);
		
	}

	@Override
	public void updateComment(Comment comment) {
		// TODO Auto-generated method stub
	    commentDao.updateComment(comment);
		
	}

}
