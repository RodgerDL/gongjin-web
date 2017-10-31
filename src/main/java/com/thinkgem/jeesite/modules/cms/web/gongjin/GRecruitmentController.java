package com.thinkgem.jeesite.modules.cms.web.gongjin;

import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.entity.gongjin.GRecruitment;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GRecruitmentService;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 招聘Controller
 * @author Roger
 * @version 2017-10-25
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class GRecruitmentController {

    @Autowired
    private GRecruitmentService gRecruitmentService;

    @Autowired
    private CategoryService categoryService;

    /**
     * 显示内容
     */
    @RequestMapping(value = "recruitment")
    public String view(Model model) {

        // 设定默认值 - 公司招聘
        String categoryId = "4";

        Category category = categoryService.get(categoryId);

        Site site = CmsUtils.getSite(Site.defaultSiteId());
        model.addAttribute("site", site);

        if ("recruitment".equals(category.getModule())) {

            GRecruitment gRecruitment = new GRecruitment();
            gRecruitment.setDelFlag("0");

            List<GRecruitment> result = gRecruitmentService.findList(gRecruitment);

            model.addAttribute("result", result);

            return "modules/cms/front/themes/gongjin/recruitment";
        }

        return "error/404";

    }

}
