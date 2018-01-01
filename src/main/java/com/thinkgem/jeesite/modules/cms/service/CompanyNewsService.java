/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.CompanyNews;
import com.thinkgem.jeesite.modules.cms.dao.CompanyNewsDao;

/**
 * 公司动态Service
 * @author xw
 * @version 2017-11-12
 */
@Service
@Transactional(readOnly = true)
public class CompanyNewsService extends CrudService<CompanyNewsDao, CompanyNews> {

	public CompanyNews get(String id) {
		return super.get(id);
	}
	
	public List<CompanyNews> findList(CompanyNews companyNews) {
		return super.findList(companyNews);
	}
	
	public Page<CompanyNews> findPage(Page<CompanyNews> page, CompanyNews companyNews) {
		return super.findPage(page, companyNews);
	}
	
	@Transactional(readOnly = false)
	public void save(CompanyNews companyNews) {
		super.save(companyNews);
	}
	
	@Transactional(readOnly = false)
	public void delete(CompanyNews companyNews) {
		super.delete(companyNews);
	}
	
}