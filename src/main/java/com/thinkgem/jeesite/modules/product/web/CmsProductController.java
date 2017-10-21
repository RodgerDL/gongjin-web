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
import com.thinkgem.jeesite.modules.product.entity.CmsProduct;
import com.thinkgem.jeesite.modules.product.service.CmsProductService;

/**
 * 产品管理Controller
 * @author xw
 * @version 2017-10-21
 */
@Controller
@RequestMapping(value = "${adminPath}/product/cmsProduct")
public class CmsProductController extends BaseController {

	@Autowired
	private CmsProductService cmsProductService;
	
	@ModelAttribute
	public CmsProduct get(@RequestParam(required=false) String id) {
		CmsProduct entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = cmsProductService.get(id);
		}
		if (entity == null){
			entity = new CmsProduct();
		}
		return entity;
	}
	
	@RequiresPermissions("product:cmsProduct:view")
	@RequestMapping(value = {"list", ""})
	public String list(CmsProduct cmsProduct, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<CmsProduct> page = cmsProductService.findPage(new Page<CmsProduct>(request, response), cmsProduct); 
		model.addAttribute("page", page);
		return "modules/product/cmsProductList";
	}

	@RequiresPermissions("product:cmsProduct:view")
	@RequestMapping(value = "form")
	public String form(CmsProduct cmsProduct, Model model) {
		model.addAttribute("cmsProduct", cmsProduct);
		return "modules/product/cmsProductForm";
	}

	@RequiresPermissions("product:cmsProduct:edit")
	@RequestMapping(value = "save")
	public String save(CmsProduct cmsProduct, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, cmsProduct)){
			return form(cmsProduct, model);
		}
		cmsProductService.save(cmsProduct);
		addMessage(redirectAttributes, "保存产品管理成功");
		return "redirect:"+Global.getAdminPath()+"/product/cmsProduct/?repage";
	}
	
	@RequiresPermissions("product:cmsProduct:edit")
	@RequestMapping(value = "delete")
	public String delete(CmsProduct cmsProduct, RedirectAttributes redirectAttributes) {
		cmsProductService.delete(cmsProduct);
		addMessage(redirectAttributes, "删除产品管理成功");
		return "redirect:"+Global.getAdminPath()+"/product/cmsProduct/?repage";
	}

}