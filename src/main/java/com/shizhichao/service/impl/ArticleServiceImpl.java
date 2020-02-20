package com.shizhichao.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.shizhichao.dao.ArticleDao;
import com.shizhichao.entity.Article;
import com.shizhichao.service.ArticleService;
@Service
public class ArticleServiceImpl implements ArticleService {

	@Autowired
	private ArticleDao articleDao;

	@Override
	public List<Article> list(String condition) {
		// TODO Auto-generated method stub
		return articleDao.list(condition);
	}
	
	
	
}
