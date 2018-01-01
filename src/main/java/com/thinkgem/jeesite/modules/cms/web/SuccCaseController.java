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
import com.thinkgem.jeesite.modules.cms.entity.SuccCase;
import com.thinkgem.jeesite.modules.cms.service.SuccCaseService;

/**
 * 成功案例Controller
 * @author xw
 * @version 2017-11-03
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/succCase")
public class SuccCaseController extends BaseController {

	@Autowired
	private SuccCaseService succCaseService;
	
	@ModelAttribute
	public SuccCase get(@RequestParam(required=false) String id) {
		SuccCase entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = succCaseService.get(id);
		}
		if (entity == null){
			entity = new SuccCase();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(SuccCase succCase, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<SuccCase> page = succCaseService.findPage(new Page<SuccCase>(request, response), succCase); 
		model.addAttribute("page", page);
		return "modules/cms/succCaseList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(SuccCase succCase, Model model) {
		model.addAttribute("succCase", succCase);
		return "modules/cms/succCaseForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(SuccCase succCase, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, succCase)){
			return form(succCase, model);
		}
		succCaseService.save(succCase);
		addMessage(redirectAttributes, "保存成功案例成功");
		return "redirect:"+Global.getAdminPath()+"/cms/succCase/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(SuccCase succCase, RedirectAttributes redirectAttributes) {
		succCaseService.delete(succCase);
		addMessage(redirectAttributes, "删除成功案例成功");
		return "redirect:"+Global.getAdminPath()+"/cms/succCase/?repage";
	}

}