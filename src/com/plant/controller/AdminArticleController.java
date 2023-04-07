package com.plant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Article;
import com.plant.service.ArticleService;

@Controller
public class AdminArticleController {
	
	@Autowired
	private ArticleService articleService;

	// 跳转文章主页
	@RequestMapping("article-list.form")
	public String articleList(ModelMap model,Article article) {
	    
		//主列表（按发布时间倒序）
		model.put("articleLists", articleService.findArticle(article));

		return "hui/article-list";
	}
	
	
	//更新文章状态
	@RequestMapping("updateArticleState.form")
	public String updateArticleState(ModelMap model,Article article) {
	    
		//执行更新
		articleService.updateArticle(article);

		return "hui/article-list";
	}

}
