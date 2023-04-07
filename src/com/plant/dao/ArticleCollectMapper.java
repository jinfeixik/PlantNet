package com.plant.dao;

import java.util.List;

import org.springframework.stereotype.Component;

import com.plant.entity.ArticleCollect;

@Component
public interface ArticleCollectMapper {

	//查询文章收藏
	public List<ArticleCollect> findArticleCollect(ArticleCollect articleCollect);
   
	//添加文章收藏
	public void addArticleCollect(ArticleCollect articleCollect);
    
	//删除文章收藏
	public void deleteArticleCollect(ArticleCollect articleCollect);

}
