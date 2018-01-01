/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service.gongjin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.modules.cms.dao.CompanySynopsisDao;
import com.thinkgem.jeesite.modules.cms.entity.CompanySynopsis;

/**
 * 公司动态Service
 * @author xw
 * @version 2017-10-22
 */
@Service
@Transactional(readOnly = true)
public class GCompanySynopsisService {

    @Autowired
    private CompanySynopsisDao companySynopsisDao;

    /**
     * 公司动态列表
     * @return new page
     */
    @Transactional(readOnly = false)
    public List<CompanySynopsis> getCompanySynopsis() {
    	
    	return companySynopsisDao.findList(new CompanySynopsis());
    }
}
