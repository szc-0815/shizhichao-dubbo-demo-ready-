package com.shizhichao.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.shizhichao.entity.Article;
import com.shizhichao.service.ArticleService;


@Controller
public class ArticleController {

	@Autowired
	private ArticleService articleService;
	
	@RequestMapping("list")
	public String list(Model model,String condition,String start,String end) {
		System.out.println("-------------------------------------");
		List<Article> articleList = articleService.list(condition,start,end);
		
		model.addAttribute("condition", condition);
		model.addAttribute("articleList", articleList);
		model.addAttribute("start", start);
		model.addAttribute("end", end);
		
		return "list";
	}
	
	
}
