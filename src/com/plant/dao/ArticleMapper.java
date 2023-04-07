package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.Article;

@Component
public interface ArticleMapper {
    
	//添加文章
	public void addArticle(Article article);
	
	
	//查找文章
	public List<Article> findArticle(Article article);
	
    
    //查找文章根据阅读量排序
	public List<Article> findArticleOrderByReadTimes(Article article);
	

    //更新文章
	public void updateArticle(Article article);
	

    //查询该作者的其他文章
	public List<Article> findOtherArticleByArticleAuthor(Article article);

}
