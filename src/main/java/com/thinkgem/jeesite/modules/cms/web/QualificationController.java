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
import com.thinkgem.jeesite.modules.cms.entity.Qualification;
import com.thinkgem.jeesite.modules.cms.service.QualificationService;

/**
 * 资质认证Controller
 * @author xw
 * @version 2017-11-02
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/qualification")
public class QualificationController extends BaseController {

	@Autowired
	private QualificationService qualificationService;
	
	@ModelAttribute
	public Qualification get(@RequestParam(required=false) String id) {
		Qualification entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = qualificationService.get(id);
		}
		if (entity == null){
			entity = new Qualification();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(Qualification qualification, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<Qualification> page = qualificationService.findPage(new Page<Qualification>(request, response), qualification); 
		model.addAttribute("page", page);
		return "modules/cms/qualificationList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(Qualification qualification, Model model) {
		model.addAttribute("qualification", qualification);
		return "modules/cms/qualificationForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(Qualification qualification, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, qualification)){
			return form(qualification, model);
		}
		qualificationService.save(qualification);
		addMessage(redirectAttributes, "保存资质认证成功");
		return "redirect:"+Global.getAdminPath()+"/cms/qualification/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(Qualification qualification, RedirectAttributes redirectAttributes) {
		qualificationService.delete(qualification);
		addMessage(redirectAttributes, "删除资质认证成功");
		return "redirect:"+Global.getAdminPath()+"/cms/qualification/?repage";
	}

}