package com.plant.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.plant.dao.ArticleMapper;
import com.plant.entity.Article;
import com.plant.entity.User;
import com.plant.service.ArticleService;
import com.plant.util.UpLoadFileUtil;

@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private HttpServletRequest request;
	
	@Autowired
	private HttpSession session;
	
	@Autowired
	private ArticleMapper articleDao;

	@Override
	public void addArticle(MultipartFile articleImageFile, Article article) {
		// TODO Auto-generated method stub
		// 上传文章封面
		UpLoadFileUtil upLoadFileUtil = new UpLoadFileUtil();

		if (articleImageFile.getOriginalFilename() != ""
				&& articleImageFile.getOriginalFilename() != null) {
			upLoadFileUtil.fileload(articleImageFile, request);
		}

		// 改变图片路径
		article.setArticleImage("plantResource/"
				+ articleImageFile.getOriginalFilename());

		// 获取当前时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);

		// 设置发布时间等于当前时间
		article.setArticleCreateTime(nowDate);
		
		// 设置文章作者
		User user = (User) session.getAttribute("user");
		article.setArticleAuthor(user.getUserName());

		// 设置花草编号等于0（之后可拓展）
		article.setPlantID(0);
		
		// 设置阅读数量，收藏数量，获赞数量为0
		article.setReadTimes(0);
		article.setArticleLikesNumber(0);
		article.setArticleCollectNumber(0);	

		// 设置文章状态为可用
		article.setArticleState("可用");


		// 插入花草信息
		articleDao.addArticle(article);

	}

	@Override
	public List<Article> findArticle(Article article) {
		// TODO Auto-generated method stub
		return articleDao.findArticle(article);
	}

	@Override
	public List<Article> findArticleOrderByReadTimes(Article article) {
		// TODO Auto-generated method stub
		return articleDao.findArticleOrderByReadTimes(article);
	}

	@Override
	public void updateArticle(Article article) {
		// TODO Auto-generated method stub
		articleDao.updateArticle(article);
	}

	@Override
	public List<Article> findOtherArticleByArticleAuthor(Article article) {
		// TODO Auto-generated method stub
		return articleDao.findOtherArticleByArticleAuthor(article);
	}

}
