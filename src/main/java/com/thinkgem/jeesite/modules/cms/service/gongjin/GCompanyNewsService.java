/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.service.gongjin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.modules.cms.dao.CompanyNewsDao;
import com.thinkgem.jeesite.modules.cms.entity.CompanyNews;

/**
 * 公司动态Service
 * @author xw
 * @version 2017-10-22
 */
@Service
@Transactional(readOnly = true)
public class GCompanyNewsService {

    @Autowired
    private CompanyNewsDao companyNewsDao;

    /**
     * 公司动态列表
     * @return new page
     */
    @Transactional(readOnly = false)
    public List<CompanyNews> getCompanyNews() {
    	
    	return companyNewsDao.findList(new CompanyNews());
    }
}
