/**
 *
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
import com.thinkgem.jeesite.modules.cms.entity.Manage;
import com.thinkgem.jeesite.modules.cms.service.ManageService;

/**
 * 公司管理Controller
 * @author xw
 * @version 2017-11-02
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/manage")
public class ManageController extends BaseController {

	@Autowired
	private ManageService manageService;
	
	@ModelAttribute
	public Manage get(@RequestParam(required=false) String id) {
		Manage entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = manageService.get(id);
		}
		if (entity == null){
			entity = new Manage();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(Manage manage, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Manage> page = manageService.findPage(new Page<Manage>(request, response), manage); 
		model.addAttribute("page", page);
		return "modules/cms/manageList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(Manage manage, Model model) {
		model.addAttribute("manage", manage);
		return "modules/cms/manageForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(Manage manage, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, manage)){
			return form(manage, model);
		}
		manageService.save(manage);
		addMessage(redirectAttributes, "保存公司管理成功");
		return "redirect:"+Global.getAdminPath()+"/cms/manage/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(Manage manage, RedirectAttributes redirectAttributes) {
		manageService.delete(manage);
		addMessage(redirectAttributes, "删除公司管理成功");
		return "redirect:"+Global.getAdminPath()+"/cms/manage/?repage";
	}

}