package com.plant.service.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.dao.ArticleCollectMapper;
import com.plant.entity.ArticleCollect;
import com.plant.entity.User;
import com.plant.service.ArticleCollectService;

@Service
public class ArticleCollectServiceImpl implements ArticleCollectService {

	@Autowired
	private ArticleCollectMapper articleCollectDao;

	@Autowired
	private HttpSession session;

	@Override
	public List<ArticleCollect> findArticleCollect(ArticleCollect articleCollect) {
		// TODO Auto-generated method stub
		return articleCollectDao.findArticleCollect(articleCollect);
	}

	@Override
	public void addArticleCollect(Integer articleID) {
		// TODO Auto-generated method stub
		// 初始化文章收藏类
		ArticleCollect articleCollect = new ArticleCollect();

		// 文章编号
		articleCollect.setArticleID(articleID);

		// 用户编号
		User user = (User) session.getAttribute("user");
		articleCollect.setUserID(user.getUserID());

		// 文章收藏时间
		Date date = new Date();
		SimpleDateFormat dateFormat = new SimpleDateFormat(
				"yyyy-MM-dd HH:mm:ss");
		String nowDate = dateFormat.format(date);
		articleCollect.setArticleCollectTime(nowDate);

		articleCollectDao.addArticleCollect(articleCollect);

	}

	@Override
	public void deleteArticleCollect(Integer articleID) {
		// TODO Auto-generated method stub

		// 初始化文章收藏类
		ArticleCollect articleCollect = new ArticleCollect();

		// 文章编号
		articleCollect.setArticleID(articleID);

		// 用户编号
		User user = (User) session.getAttribute("user");
		articleCollect.setUserID(user.getUserID());

		articleCollectDao.deleteArticleCollect(articleCollect);

	}

}
