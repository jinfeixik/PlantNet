package com.plant.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.plant.entity.Article;
import com.plant.entity.ArticleCollect;
import com.plant.entity.Comment;
import com.plant.entity.User;
import com.plant.service.ArticleCollectService;
import com.plant.service.ArticleService;
import com.plant.service.CommentService;

@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;

	@Autowired
	private CommentService commentService;
	
	@Autowired
	private ArticleCollectService articleCollectService;

	@Autowired
	private HttpSession session;

	// 跳转文章发布页面
	@RequestMapping("artical-add.form")
	public String articalAdd() {

		return "artical-add";
	}

	// 发布文章
	@RequestMapping("addArticle.form")
	@ResponseBody
	public String addArticle(
			@RequestParam("articleImageFile") MultipartFile articleImageFile,
			Article article) {

		articleService.addArticle(articleImageFile, article);

		return "true";
	}

	// 跳转文章主页
	@RequestMapping("article-index.form")
	public String findArticle(ModelMap model, Article article) {

		article.setArticleState("可用");

		// 主列表（按发布时间倒序）
		model.put("articleLists", articleService.findArticle(article));

		// 侧边列表（按浏览量倒序）
		model.put("readTimesLists",
				articleService.findArticleOrderByReadTimes(article));

		return "artical-index";
	}

	// 搜索文章
	@RequestMapping("searchArticle.form")
	public String searchArticle(ModelMap model, Article article) {

		article.setArticleState("可用");

		// 主列表（按发布时间倒序）
		model.put("articleLists", articleService.findArticle(article));

		article.setArticleTitle(null);

		// 侧边列表（按浏览量倒序）
		model.put("readTimesLists",
				articleService.findArticleOrderByReadTimes(article));

		return "artical-index";
	}

	// 文章详情页
	@RequestMapping("article-detail.form")
	public String findArticleDetail(ModelMap model, Article article) {

		// 如果查到了数据，传出一条
		if (articleService.findArticle(article).size() > 0) {
			article = articleService.findArticle(article).get(0);			
			// 详情数据（按发布时间倒序）
			model.put("articleList", article);
		}else{
			return "artical-detail";
		}

		// 更新阅读次数
		Article newArticle = new Article();
		newArticle.setArticleID(article.getArticleID());
		newArticle.setReadTimes(article.getReadTimes() + 1);
		articleService.updateArticle(newArticle);

		// 查询此作者的其他文章并传出
		Article otherArticle = new Article();
		otherArticle.setArticleAuthor(article.getArticleAuthor());
		otherArticle.setArticleID(article.getArticleID());
		otherArticle.setArticleState("可用");
		model.put("otherArticleLists",
				articleService.findOtherArticleByArticleAuthor(otherArticle));

		// 查询评论列表并传出
		Comment comment = new Comment();
		comment.setArticleID(article.getArticleID());
		model.put("commentLists", commentService.findComment(comment));

		// 查询是否被收藏
		boolean IsArticleCollected = false;
		if (session.getAttribute("user") != null) {
			
			ArticleCollect articleCollect=new ArticleCollect();
			// 用户编号
			User user = (User) session.getAttribute("user");
			articleCollect.setUserID(user.getUserID());
			// 文章编号
			articleCollect.setArticleID(article.getArticleID());

			// 根据用户编号和文章编号查询出收藏信息
			if (articleCollectService.findArticleCollect(articleCollect).size() != 0) {
				IsArticleCollected = true;
			}
		}
		model.put("IsArticleCollected", IsArticleCollected);

		return "artical-detail";
	}

	// 我的发布
	@RequestMapping("searchMyArticel.form")
	public String searchMyArticel(ModelMap model, Article article) {

		article.setArticleState("可用");

		// 用户编号
		User user = (User) session.getAttribute("user");
		article.setArticleAuthor(user.getUserName());

		// 主列表（按发布时间倒序）
		model.put("articleLists", articleService.findArticle(article));

		article.setArticleTitle(null);
		article.setArticleAuthor(null);

		// 侧边列表（按浏览量倒序）
		model.put("readTimesLists",
				articleService.findArticleOrderByReadTimes(article));

		// 传回标签标记
		model.put("tabFlag", "我的发布");

		return "artical-index";
	}
	
	//我的收藏
	@RequestMapping("searchCollectArticel.form")
	public String searchCollectArticel(ModelMap model, Article article) {
		
		article.setArticleState("可用");
		
		// 侧边列表（按浏览量倒序）
		model.put("readTimesLists",
				articleService.findArticleOrderByReadTimes(article));
		
		//查询我的所有收藏记录
		ArticleCollect articleCollect=new ArticleCollect();
		
		// 用户编号
		User user = (User) session.getAttribute("user");
		articleCollect.setUserID(user.getUserID());
		
		articleCollect.setArticle(article);
		
		//如果有值则放入文章链表中
	    if(articleCollectService.findArticleCollect(articleCollect).size()>0){
	    	
	    	List<Article> newArticleList=new ArrayList<Article>();
	    	
	    	for(ArticleCollect newArticleCollect:articleCollectService.findArticleCollect(articleCollect)){
	    		
	    		newArticleList.add(newArticleCollect.getArticle());
	    	}
	    	
	    	// 传出主列表
			model.put("articleLists", newArticleList);
	    	
	    }		

		// 传回标签标记
		model.put("tabFlag", "我的收藏");

		return "artical-index";
	}

}
