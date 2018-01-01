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
import com.thinkgem.jeesite.modules.cms.entity.gongjin.GRecruitment;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GRecruitmentService;

/**
 * 招聘Controller
 * @author Roger
 * @version 2017-10-22
 */
@Controller
@RequestMapping(value = "${adminPath}/cms/recruitment")
public class RecruitmentController extends BaseController {

	@Autowired
	private GRecruitmentService gRecruitmentService;
	
	@ModelAttribute
	public GRecruitment get(@RequestParam(required=false) String id) {
		GRecruitment entity = null;
		if (StringUtils.isNotBlank(id)){
			entity = gRecruitmentService.get(id);
		}
		if (entity == null){
			entity = new GRecruitment();
		}
		return entity;
	}
	
	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = {"list", ""})
	public String list(GRecruitment recruitment, HttpServletRequest request, HttpServletResponse response, Model model) {
		Page<GRecruitment> page = gRecruitmentService.findPage(new Page<GRecruitment>(request, response), recruitment);
		model.addAttribute("page", page);
		return "modules/cms/recruitmentList";
	}

	@RequiresPermissions("cms:article:view")
	@RequestMapping(value = "form")
	public String form(GRecruitment recruitment, Model model) {
		model.addAttribute("recruitment", recruitment);
		return "modules/cms/recruitmentForm";
	}

	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "save")
	public String save(GRecruitment recruitment, Model model, RedirectAttributes redirectAttributes) {
		if (!beanValidator(model, recruitment)){
			return form(recruitment, model);
		}
		gRecruitmentService.save(recruitment);
		addMessage(redirectAttributes, "保存招聘信息成功");
		return "redirect:"+Global.getAdminPath()+"/cms/recruitment/?repage";
	}
	
	@RequiresPermissions("cms:article:edit")
	@RequestMapping(value = "delete")
	public String delete(GRecruitment recruitment, RedirectAttributes redirectAttributes) {
		gRecruitmentService.delete(recruitment);
		addMessage(redirectAttributes, "删除招聘信息成功");
		return "redirect:"+Global.getAdminPath()+"/cms/recruitment/?repage";
	}

}