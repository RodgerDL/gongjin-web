/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.CompanySynopsis;
import com.thinkgem.jeesite.modules.cms.dao.CompanySynopsisDao;

/**
 * 公司简介Service
 * @author xw
 * @version 2017-11-12
 */
@Service
@Transactional(readOnly = true)
public class CompanySynopsisService extends CrudService<CompanySynopsisDao, CompanySynopsis> {

	public CompanySynopsis get(String id) {
		return super.get(id);
	}
	
	public List<CompanySynopsis> findList(CompanySynopsis companySynopsis) {
		return super.findList(companySynopsis);
	}
	
	public Page<CompanySynopsis> findPage(Page<CompanySynopsis> page, CompanySynopsis companySynopsis) {
		return super.findPage(page, companySynopsis);
	}
	
	@Transactional(readOnly = false)
	public void save(CompanySynopsis companySynopsis) {
		super.save(companySynopsis);
	}
	
	@Transactional(readOnly = false)
	public void delete(CompanySynopsis companySynopsis) {
		super.delete(companySynopsis);
	}
	
}