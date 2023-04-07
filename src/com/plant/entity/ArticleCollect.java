package com.plant.entity;

public class ArticleCollect {

	// 文章收藏编号
	public Integer articleCollectID;
	// 用户编号
	private Integer userID;
	// 文章编号
	public Integer articleID;
	// 文章收藏时间
	public String articleCollectTime;

	// 文章（实体）
	private Article article;

	public Integer getArticleCollectID() {
		return articleCollectID;
	}

	public void setArticleCollectID(Integer articleCollectID) {
		this.articleCollectID = articleCollectID;
	}

	public Integer getUserID() {
		return userID;
	}

	public void setUserID(Integer userID) {
		this.userID = userID;
	}

	public Integer getArticleID() {
		return articleID;
	}

	public void setArticleID(Integer articleID) {
		this.articleID = articleID;
	}

	public String getArticleCollectTime() {
		return articleCollectTime;
	}

	public void setArticleCollectTime(String articleCollectTime) {
		this.articleCollectTime = articleCollectTime;
	}

	public Article getArticle() {
		return article;
	}

	public void setArticle(Article article) {
		this.article = article;
	}

	@Override
	public String toString() {
		return "ArticleCollect [articleCollectID=" + articleCollectID
				+ ", userID=" + userID + ", articleID=" + articleID
				+ ", articleCollectTime=" + articleCollectTime + ", article="
				+ article + ", getArticleCollectID()=" + getArticleCollectID()
				+ ", getUserID()=" + getUserID() + ", getArticleID()="
				+ getArticleID() + ", getArticleCollectTime()="
				+ getArticleCollectTime() + ", getArticle()=" + getArticle()
				+ ", getClass()=" + getClass() + ", hashCode()=" + hashCode()
				+ ", toString()=" + super.toString() + "]";
	}
	
	

}
