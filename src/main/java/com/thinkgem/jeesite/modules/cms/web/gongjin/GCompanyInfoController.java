package com.thinkgem.jeesite.modules.cms.web.gongjin;

import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Contact;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.entity.gongjin.GRecruitment;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GCompanyInfoService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GContactService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GRecruitmentService;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 企业相关Controller
 * @author xw
 * @version 2017-10-25
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class GCompanyInfoController {

    @Autowired
    private GCompanyInfoService gCompanyInfoService;

    /**
     * 显示内容
     */
    @RequestMapping(value = "companyInfo")
    public String view(Model model) {

		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);

		model.addAttribute("companyInfo", gCompanyInfoService.getCompanyInfo());
		return "modules/cms/front/themes/gongjin/companyInfo";
    }

}
