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
import com.thinkgem.jeesite.modules.cms.entity.Factory;
import com.thinkgem.jeesite.modules.cms.service.FactoryService;

/**
 * 工厂信息Controller
 * @author xw
 * @version 2017-11-02
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/factory")
public class FactoryController extends BaseController {

	@Autowired
	private FactoryService factoryService;
	
	@ModelAttribute
	public Factory get(@RequestParam(required=false) String id) {
		Factory entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = factoryService.get(id);
		}
		if (entity == null){
			entity = new Factory();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(Factory factory, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Factory> page = factoryService.findPage(new Page<Factory>(request, response), factory); 
		model.addAttribute("page", page);
		return "modules/cms/factoryList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(Factory factory, Model model) {
		model.addAttribute("factory", factory);
		return "modules/cms/factoryForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(Factory factory, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, factory)){
			return form(factory, model);
		}
		factoryService.save(factory);
		addMessage(redirectAttributes, "保存工厂信息成功");
		return "redirect:"+Global.getAdminPath()+"/cms/factory/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(Factory factory, RedirectAttributes redirectAttributes) {
		factoryService.delete(factory);
		addMessage(redirectAttributes, "删除工厂信息成功");
		return "redirect:"+Global.getAdminPath()+"/cms/factory/?repage";
	}

}