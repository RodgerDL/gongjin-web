/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.web.gongjin;

import com.thinkgem.jeesite.common.web.BaseController;
import com.thinkgem.jeesite.modules.cms.entity.Site;
import com.thinkgem.jeesite.modules.cms.service.gongjin.GProductService;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * 网站Controller
 * @author xw
 * @version 2017-10-01
 */
@Controller
@RequestMapping(value = "${frontPath}")
public class GFirmInfoController extends BaseController{

	/**
	 * 显示内容
	 */
	@RequestMapping(value = "firmInfo")
	public String product(Model model) {

		Site site = CmsUtils.getSite(Site.defaultSiteId());
		model.addAttribute("site", site);

		return "modules/cms/front/themes/gongjin/firmInfo";
	}

}
