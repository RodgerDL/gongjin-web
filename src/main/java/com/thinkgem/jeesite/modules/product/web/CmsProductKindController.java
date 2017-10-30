/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.product.web;

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
import com.thinkgem.jeesite.modules.product.entity.CmsProductKind;
import com.thinkgem.jeesite.modules.product.service.CmsProductKindService;

/**
 * 产品管理Controller
 * @author xw
 * @version 2017-10-21
 */
@Controller
@RequestMapping(value = "${adminPath}/product/cmsProductKind")
public class CmsProductKindController extends BaseController {

	@Autowired
	private CmsProductKindService cmsProductKindService;
	
	@ModelAttribute
	public CmsProductKind get(@RequestParam(required=false) String id) {
		CmsProductKind entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = cmsProductKindService.get(id);
		}
		if (entity == null){
			entity = new CmsProductKind();
		}
		return entity;
	}
	
	@RequiresPermissions("product:cmsProductKind:view")
	@RequestMapping(value = {"list", ""})
	public String list(CmsProductKind cmsProductKind, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CmsProductKind> page = cmsProductKindService.findPage(new Page<CmsProductKind>(request, response), cmsProductKind); 
		model.addAttribute("page", page);
		return "modules/product/cmsProductKindList";
	}

	@RequiresPermissions("product:cmsProductKind:view")
	@RequestMapping(value = "form")
	public String form(CmsProductKind cmsProductKind, Model model) {
		model.addAttribute("cmsProductKind", cmsProductKind);
		return "modules/product/cmsProductKindForm";
	}

	@RequiresPermissions("product:cmsProductKind:edit")
	@RequestMapping(value = "save")
	public String save(CmsProductKind cmsProductKind, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, cmsProductKind)){
			return form(cmsProductKind, model);
		}
		cmsProductKindService.save(cmsProductKind);
		addMessage(redirectAttributes, "保存产品管理成功");
		return "redirect:"+Global.getAdminPath()+"/product/cmsProductKind/?repage";
	}
	
	@RequiresPermissions("product:cmsProductKind:edit")
	@RequestMapping(value = "delete")
	public String delete(CmsProductKind cmsProductKind, RedirectAttributes redirectAttributes) {
		cmsProductKindService.delete(cmsProductKind);
		addMessage(redirectAttributes, "删除产品管理成功");
		return "redirect:"+Global.getAdminPath()+"/product/cmsProductKind/?repage";
	}

}