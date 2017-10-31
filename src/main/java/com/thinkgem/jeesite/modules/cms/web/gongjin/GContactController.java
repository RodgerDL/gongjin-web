package com.thinkgem.jeesite.modules.cms.web.gongjin;

import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Contact;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.entity.gongjin.GRecruitment;
import com.thinkgem.jeesite.modules.cms.service.CategoryService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GContactService;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GRecruitmentService;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * 联系我们Controller
 * @author xw
 * @version 2017-10-25
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class GContactController {

    @Autowired
    private GContactService gContactService;

    @Autowired
    private CategoryService categoryService;

    /**
     * 显示内容
     */
    @RequestMapping(value = "contact")
    public String view(Model model) {

        // 设定默认值 - 公司招聘
        String categoryId = "6";

        Category category = categoryService.get(categoryId);
        if (category==null){
            Site site = CmsUtils.getSite(Site.defaultSiteId());
            model.addAttribute("site", site);
            return "error/404";
        }
        model.addAttribute("site", category.getSite());

        if ("contact".equals(category.getModule())) {

            Contact contact = new Contact();
            contact.setDelFlag("0");

            List<Contact> result = gContactService.findList(contact);

            model.addAttribute("result", result);

            return "modules/cms/front/themes/gongjin/contact";
        }

        return "error/404";

    }

}
