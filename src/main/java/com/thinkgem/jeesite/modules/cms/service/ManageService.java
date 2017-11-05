/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.Manage;
import com.thinkgem.jeesite.modules.cms.dao.ManageDao;

/**
 * 公司管理Service
 * @author xw
 * @version 2017-11-02
 */
@Service
@Transactional(readOnly = true)
public class ManageService extends CrudService<ManageDao, Manage> {

	public Manage get(String id) {
		return super.get(id);
	}
	
	public List<Manage> findList(Manage manage) {
		return super.findList(manage);
	}
	
	public Page<Manage> findPage(Page<Manage> page, Manage manage) {
		return super.findPage(page, manage);
	}
	
	@Transactional(readOnly = false)
	public void save(Manage manage) {
		super.save(manage);
	}
	
	@Transactional(readOnly = false)
	public void delete(Manage manage) {
		super.delete(manage);
	}
	
}