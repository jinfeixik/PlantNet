package com.plant.service;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

import com.plant.entity.Article;

public interface ArticleService {
    
	//添加文章
	public void addArticle(MultipartFile articleImageFile, Article article);

	//查找文章
	public List<Article> findArticle(Article article);
    
	//查找文章根据阅读量排序
	public List<Article> findArticleOrderByReadTimes(Article article);

	//更新花草
	public void updateArticle(Article article);
    
	//查询出作者的其他文章
	public List<Article> findOtherArticleByArticleAuthor(Article article);

}
