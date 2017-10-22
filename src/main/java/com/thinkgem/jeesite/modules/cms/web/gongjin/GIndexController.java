/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.web.gongjin;

import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.service.*;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import com.thinkgem.jeesite.modules.cms.entity.Article;
import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.common.persistence.Page;
import org.springframework.web.bind.annotation.RequestMapping;

import com.thinkgem.jeesite.modules.cms.service.gongjin.GArticleService;

/**
 * 网站首页Controller
 * @author Roger
 * @version 2017-10-01
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class GIndexController extends BaseController{

	@Autowired
	private GArticleService gArticleService;
	@Autowired
	private ArticleService articleService;
	@Autowired
	private ArticleDataService articleDataService;
	@Autowired
	private CategoryService categoryService;
	@Autowired
	private SiteService siteService;

	/**
	 * 网站首页
	 */
	@RequestMapping
	public String index(Model model) {
		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);
		model.addAttribute("isIndex", true);

		//set default value
        String categoryId = "3";
        int pageNo = 1;
        int pageSize = 3;

		Category category = categoryService.get(categoryId);
		if (category==null){
			return "error/404";
		}

		// 获取内容列表
		if ("article".equals(category.getModule())){
			Page<Article> page = new Page<Article>(pageNo, pageSize);
			//System.out.println(page.getPageNo());
			page = gArticleService.findPage(page, new Article(category), false);
			model.addAttribute("page", page);
		}

		return "modules/cms/front/themes/gongjin/index";
	}
}
