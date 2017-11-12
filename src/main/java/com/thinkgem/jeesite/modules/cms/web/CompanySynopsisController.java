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
import com.thinkgem.jeesite.modules.cms.entity.CompanySynopsis;
import com.thinkgem.jeesite.modules.cms.service.CompanySynopsisService;

/**
 * 公司简介Controller
 * @author xw
 * @version 2017-11-12
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/companySynopsis")
public class CompanySynopsisController extends BaseController {

	@Autowired
	private CompanySynopsisService companySynopsisService;
	
	@ModelAttribute
	public CompanySynopsis get(@RequestParam(required=false) String id) {
		CompanySynopsis entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = companySynopsisService.get(id);
		}
		if (entity == null){
			entity = new CompanySynopsis();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(CompanySynopsis companySynopsis, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CompanySynopsis> page = companySynopsisService.findPage(new Page<CompanySynopsis>(request, response), companySynopsis); 
		model.addAttribute("page", page);
		return "modules/cms/companySynopsisList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(CompanySynopsis companySynopsis, Model model) {
		model.addAttribute("companySynopsis", companySynopsis);
		return "modules/cms/companySynopsisForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(CompanySynopsis companySynopsis, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, companySynopsis)){
			return form(companySynopsis, model);
		}
		companySynopsisService.save(companySynopsis);
		addMessage(redirectAttributes, "保存公司简介成功");
		return "redirect:"+Global.getAdminPath()+"/cms/companySynopsis/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(CompanySynopsis companySynopsis, RedirectAttributes redirectAttributes) {
		companySynopsisService.delete(companySynopsis);
		addMessage(redirectAttributes, "删除公司简介成功");
		return "redirect:"+Global.getAdminPath()+"/cms/companySynopsis/?repage";
	}

}