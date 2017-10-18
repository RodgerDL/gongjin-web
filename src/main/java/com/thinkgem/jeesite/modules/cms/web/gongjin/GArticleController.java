/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.web.gongjin;

import java.util.List;

import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Article;
import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.service.*;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.thinkgem.jeesite.modules.cms.service.gongjin.GArticleService;
import com.thinkgem.jeesite.modules.cms.service.ArticleService;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;
import com.thinkgem.jeesite.modules.cms.service.SiteService;

/**
 * 网站Controller
 * @author Roger
 * @version 2017-10-01
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class GArticleController extends BaseController{

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
	 * 显示内容
	 */
	@RequestMapping(value = "view-{contentId}")
	public String view(@PathVariable String contentId, Model model) {

	    // 设定默认值
	    String categoryId = "3";

		Category category = categoryService.get(categoryId);
		if (category==null){
			Site site = CmsUtils.getSite(Site.defaultSiteId());
			model.addAttribute("site", site);
			return "error/404";
		}
		model.addAttribute("site", category.getSite());
		if ("article".equals(category.getModule())){
			// 如果没有子栏目，并父节点为跟节点的，栏目列表为当前栏目。
			List<Category> categoryList = Lists.newArrayList();
			if (category.getParent().getId().equals("1")){
				categoryList.add(category);
			}else{
				categoryList = categoryService.findByParentId(category.getParent().getId(), category.getSite().getId());
			}

			Article paramArticle = new Article();
			Category paramCategory = new Category();
			paramCategory.setId(categoryId);
			paramArticle.setId(contentId);
			paramArticle.setCategory(paramCategory);

			// 获取文章内容
			Article article = gArticleService.getArticle(paramArticle);
			if (article==null || !Article.DEL_FLAG_NORMAL.equals(article.getDelFlag())){
				return "error/404";
			}
			// 将数据传递到视图
			model.addAttribute("category", categoryService.get(article.getCategory().getId()));
			model.addAttribute("categoryList", categoryList);
			article.setArticleData(articleDataService.get(article.getId()));
			model.addAttribute("article", article);
            CmsUtils.addViewConfigAttribute(model, article.getCategory());
            CmsUtils.addViewConfigAttribute(model, article.getViewConfig());
            Site site = siteService.get(category.getSite().getId());
            model.addAttribute("site", site);

            int pageNo = 1;
            int pageSize = 3;
            Page<Article> page = new Page<Article>(pageNo, pageSize);
            //System.out.println(page.getPageNo());
            page = gArticleService.findPage(page, new Article(category), false);
            model.addAttribute("page", page);

            return "modules/cms/front/themes/gongjin/articleDetail";
		}
		return "error/404";
	}

}
