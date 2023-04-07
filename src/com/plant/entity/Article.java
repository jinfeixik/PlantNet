package com.plant.entity;

//文章
public class Article {
	// 文章编号
	public Integer articleID;
	// 花草编号
	private Integer plantID;
	// 文章标题
	public String articleTitle;
	// 文章内容
	public String articleContent;
	// 文章作者
	private String articleAuthor;
	// 文章图片
	private String articleImage;
	// 发布时间
	private String articleCreateTime;
	// 阅读次数
	private Integer readTimes;
	// 文章状态
	private String articleState;
	// 获赞数量
	private Integer articleLikesNumber;
	// 收藏数量
	private Integer articleCollectNumber;
	// 文章描述
	private String articleDescribe;
	public Integer getArticleID() {
		return articleID;
	}
	public void setArticleID(Integer articleID) {
		this.articleID = articleID;
	}
	public Integer getPlantID() {
		return plantID;
	}
	public void setPlantID(Integer plantID) {
		this.plantID = plantID;
	}
	public String getArticleTitle() {
		return articleTitle;
	}
	public void setArticleTitle(String articleTitle) {
		this.articleTitle = articleTitle;
	}
	public String getArticleContent() {
		return articleContent;
	}
	public void setArticleContent(String articleContent) {
		this.articleContent = articleContent;
	}
	public String getArticleAuthor() {
		return articleAuthor;
	}
	public void setArticleAuthor(String articleAuthor) {
		this.articleAuthor = articleAuthor;
	}
	public String getArticleImage() {
		return articleImage;
	}
	public void setArticleImage(String articleImage) {
		this.articleImage = articleImage;
	}
	public String getArticleCreateTime() {
		return articleCreateTime;
	}
	public void setArticleCreateTime(String articleCreateTime) {
		this.articleCreateTime = articleCreateTime;
	}
	public Integer getReadTimes() {
		return readTimes;
	}
	public void setReadTimes(Integer readTimes) {
		this.readTimes = readTimes;
	}
	public String getArticleState() {
		return articleState;
	}
	public void setArticleState(String articleState) {
		this.articleState = articleState;
	}
	public Integer getArticleLikesNumber() {
		return articleLikesNumber;
	}
	public void setArticleLikesNumber(Integer articleLikesNumber) {
		this.articleLikesNumber = articleLikesNumber;
	}
	public Integer getArticleCollectNumber() {
		return articleCollectNumber;
	}
	public void setArticleCollectNumber(Integer articleCollectNumber) {
		this.articleCollectNumber = articleCollectNumber;
	}
	public String getArticleDescribe() {
		return articleDescribe;
	}
	public void setArticleDescribe(String articleDescribe) {
		this.articleDescribe = articleDescribe;
	}
	@Override
	public String toString() {
		return "Artical [articleID=" + articleID + ", plantID=" + plantID
				+ ", articleTitle=" + articleTitle + ", articleContent="
				+ articleContent + ", articleAuthor=" + articleAuthor
				+ ", articleImage=" + articleImage + ", articleCreateTime="
				+ articleCreateTime + ", readTimes=" + readTimes
				+ ", articleState=" + articleState + ", articleLikesNumber="
				+ articleLikesNumber + ", articleCollectNumber="
				+ articleCollectNumber + ", articleDescribe=" + articleDescribe
				+ ", getArticleID()=" + getArticleID() + ", getPlantID()="
				+ getPlantID() + ", getArticleTitle()=" + getArticleTitle()
				+ ", getArticleContent()=" + getArticleContent()
				+ ", getArticleAuthor()=" + getArticleAuthor()
				+ ", getArticleImage()=" + getArticleImage()
				+ ", getArticleCreateTime()=" + getArticleCreateTime()
				+ ", getReadTimes()=" + getReadTimes() + ", getArticleState()="
				+ getArticleState() + ", getArticleLikesNumber()="
				+ getArticleLikesNumber() + ", getArticleCollectNumber()="
				+ getArticleCollectNumber() + ", getArticleDescribe()="
				+ getArticleDescribe() + ", getClass()=" + getClass()
				+ ", hashCode()=" + hashCode() + ", toString()="
				+ super.toString() + "]";
	}
	
	
	
    
}
