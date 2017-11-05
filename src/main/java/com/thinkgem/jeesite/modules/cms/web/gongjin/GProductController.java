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

import com.thinkgem.jeesite.modules.cms.service.ArticleService;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;
import com.thinkgem.jeesite.modules.cms.service.SiteService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GArticleService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GProductService;

/**
 * 网站Controller
 * @author xw
 * @version 2017-10-01
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class GProductController extends BaseController{

	@Autowired
	private GProductService gProductService;

	/**
	 * 显示内容
	 */
	@RequestMapping(value = "product")
	public String product(Model model) {

		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);

		model.addAttribute("product", gProductService.getProduct());
			return "modules/cms/front/themes/gongjin/product";
	}

}
