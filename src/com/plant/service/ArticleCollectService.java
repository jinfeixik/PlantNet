package com.plant.service;

import java.util.List;

import com.plant.entity.ArticleCollect;

public interface ArticleCollectService {
    
	//查找文章收藏
	public List<ArticleCollect> findArticleCollect(ArticleCollect articleCollect);
    
	//添加花草收藏
	public void addArticleCollect(Integer articleID);
    
	//取消花草收藏
	public void deleteArticleCollect(Integer articleID);
	
	
	

}
