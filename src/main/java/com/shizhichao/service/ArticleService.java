package com.shizhichao.service;

import java.util.List;

import com.shizhichao.entity.Article;

public interface ArticleService {

	List<Article> list(String condition, String start, String end);

}
