package com.plant.entity;

//评论
public class Comment {
	//评论编号
	private Integer commentID;
	//用户编号
	public Integer userID;
	//回复编号
	private Integer replyID;
	//评论时间
	public String commentTime;
	//评论内容
	public String commentContent;
	//评论星级
	private Integer commentStar;
	//评论状态
	private String commentState;
	//文章编号
	private Integer articleID;
	
	//文章（实体）
	private Article article;
	
	//文章（实体）
	private User user;
	
	public Integer getCommentID() {
		return commentID;
	}
	public void setCommentID(Integer commentID) {
		this.commentID = commentID;
	}
	public Integer getUserID() {
		return userID;
	}
	public void setUserID(Integer userID) {
		this.userID = userID;
	}
	public Integer getReplyID() {
		return replyID;
	}
	public void setReplyID(Integer replyID) {
		this.replyID = replyID;
	}
	public String getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(String commentTime) {
		this.commentTime = commentTime;
	}
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Integer getCommentStar() {
		return commentStar;
	}
	public void setCommentStar(Integer commentStar) {
		this.commentStar = commentStar;
	}
	public String getCommentState() {
		return commentState;
	}
	public void setCommentState(String commentState) {
		this.commentState = commentState;
	}
	public Integer getArticleID() {
		return articleID;
	}
	public void setArticleID(Integer articleID) {
		this.articleID = articleID;
	}
	public Article getArticle() {
		return article;
	}
	public void setArticle(Article article) {
		this.article = article;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@Override
	public String toString() {
		return "Comment [commentID=" + commentID + ", userID=" + userID
				+ ", replyID=" + replyID + ", commentTime=" + commentTime
				+ ", commentContent=" + commentContent + ", commentStar="
				+ commentStar + ", commentState=" + commentState
				+ ", articleID=" + articleID + ", article=" + article
				+ ", user=" + user + ", getCommentID()=" + getCommentID()
				+ ", getUserID()=" + getUserID() + ", getReplyID()="
				+ getReplyID() + ", getCommentTime()=" + getCommentTime()
				+ ", getCommentContent()=" + getCommentContent()
				+ ", getCommentStar()=" + getCommentStar()
				+ ", getCommentState()=" + getCommentState()
				+ ", getArticleID()=" + getArticleID() + ", getArticle()="
				+ getArticle() + ", getUser()=" + getUser() + ", getClass()="
				+ getClass() + ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
	

}
