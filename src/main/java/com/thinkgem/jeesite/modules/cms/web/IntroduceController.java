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
import com.thinkgem.jeesite.modules.cms.entity.Introduce;
import com.thinkgem.jeesite.modules.cms.service.IntroduceService;

/**
 * 公司介绍Controller
 * @author xw
 * @version 2017-11-02
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/introduce")
public class IntroduceController extends BaseController {

	@Autowired
	private IntroduceService introduceService;
	
	@ModelAttribute
	public Introduce get(@RequestParam(required=false) String id) {
		Introduce entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = introduceService.get(id);
		}
		if (entity == null){
			entity = new Introduce();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(Introduce introduce, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Introduce> page = introduceService.findPage(new Page<Introduce>(request, response), introduce); 
		model.addAttribute("page", page);
		return "modules/cms/introduceList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(Introduce introduce, Model model) {
		model.addAttribute("introduce", introduce);
		return "modules/cms/introduceForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(Introduce introduce, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, introduce)){
			return form(introduce, model);
		}
		introduceService.save(introduce);
		addMessage(redirectAttributes, "保存公司介绍成功");
		return "redirect:"+Global.getAdminPath()+"/cms/introduce/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(Introduce introduce, RedirectAttributes redirectAttributes) {
		introduceService.delete(introduce);
		addMessage(redirectAttributes, "删除公司介绍成功");
		return "redirect:"+Global.getAdminPath()+"/cms/introduce/?repage";
	}

}