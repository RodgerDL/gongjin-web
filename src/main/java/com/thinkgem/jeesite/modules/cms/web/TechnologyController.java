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
import com.thinkgem.jeesite.modules.cms.entity.Technology;
import com.thinkgem.jeesite.modules.cms.service.TechnologyService;

/**
 * 技术能力Controller
 * @author xw
 * @version 2017-11-02
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/technology")
public class TechnologyController extends BaseController {

	@Autowired
	private TechnologyService technologyService;
	
	@ModelAttribute
	public Technology get(@RequestParam(required=false) String id) {
		Technology entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = technologyService.get(id);
		}
		if (entity == null){
			entity = new Technology();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(Technology technology, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Technology> page = technologyService.findPage(new Page<Technology>(request, response), technology); 
		model.addAttribute("page", page);
		return "modules/cms/technologyList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(Technology technology, Model model) {
		model.addAttribute("technology", technology);
		return "modules/cms/technologyForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(Technology technology, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, technology)){
			return form(technology, model);
		}
		technologyService.save(technology);
		addMessage(redirectAttributes, "保存技术能力成功");
		return "redirect:"+Global.getAdminPath()+"/cms/technology/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(Technology technology, RedirectAttributes redirectAttributes) {
		technologyService.delete(technology);
		addMessage(redirectAttributes, "删除技术能力成功");
		return "redirect:"+Global.getAdminPath()+"/cms/technology/?repage";
	}

}