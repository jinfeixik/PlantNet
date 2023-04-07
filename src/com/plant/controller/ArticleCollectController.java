package com.plant.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.plant.entity.Article;
import com.plant.service.ArticleCollectService;
import com.plant.service.ArticleService;

@Controller
public class ArticleCollectController {
	
	@Autowired
	private ArticleService articleService;
	
	@Autowired
	private ArticleCollectService articleCollectService;

	// 收藏文章/取消收藏
	@RequestMapping("collectArticle.form")
	public String collectArticle(ModelMap model, Article article,
			String collectFlag) {
		
		System.out.println(article.toString());

		// 更新文章收藏数量
		articleService.updateArticle(article);

		// 如果收藏标记为收藏则添加
		if (collectFlag.equals("收藏")) {

			articleCollectService.addArticleCollect(article.getArticleID());

			// 如果收藏标记为取消收藏则删除
		} else if (collectFlag.equals("取消收藏")) {

			articleCollectService.deleteArticleCollect(article.getArticleID());

		}

		return "artical-index";
	}

}
