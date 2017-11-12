/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.web;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.thinkgem.jeesite.common.config.Global;
import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.cms.entity.CompanyNews;
import com.thinkgem.jeesite.modules.cms.service.CompanyNewsService;

/**
 * 公司动态Controller
 * @author xw
 * @version 2017-11-12
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/companyNews")
public class CompanyNewsController extends BaseController {

	@Autowired
	private CompanyNewsService companyNewsService;
	
	@ModelAttribute
	public CompanyNews get(@RequestParam(required=false) String id) {
		CompanyNews entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = companyNewsService.get(id);
		}
		if (entity == null){
			entity = new CompanyNews();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(CompanyNews companyNews, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CompanyNews> page = companyNewsService.findPage(new Page<CompanyNews>(request, response), companyNews); 
		model.addAttribute("page", page);
		return "modules/cms/companyNewsList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(CompanyNews companyNews, Model model) {
		model.addAttribute("companyNews", companyNews);
		return "modules/cms/companyNewsForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(CompanyNews companyNews, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, companyNews)){
			return form(companyNews, model);
		}
		companyNewsService.save(companyNews);
		addMessage(redirectAttributes, "保存公司动态成功");
		return "redirect:"+Global.getAdminPath()+"/cms/companyNews/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(CompanyNews companyNews, RedirectAttributes redirectAttributes) {
		companyNewsService.delete(companyNews);
		addMessage(redirectAttributes, "删除公司动态成功");
		return "redirect:"+Global.getAdminPath()+"/cms/companyNews/?repage";
	}

}