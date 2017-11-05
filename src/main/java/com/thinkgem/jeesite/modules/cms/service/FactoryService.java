/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.Factory;
import com.thinkgem.jeesite.modules.cms.dao.FactoryDao;

/**
 * 工厂信息Service
 * @author xw
 * @version 2017-11-02
 */
@Service
@Transactional(readOnly = true)
public class FactoryService extends CrudService<FactoryDao, Factory> {

	public Factory get(String id) {
		return super.get(id);
	}
	
	public List<Factory> findList(Factory factory) {
		return super.findList(factory);
	}
	
	public Page<Factory> findPage(Page<Factory> page, Factory factory) {
		return super.findPage(page, factory);
	}
	
	@Transactional(readOnly = false)
	public void save(Factory factory) {
		super.save(factory);
	}
	
	@Transactional(readOnly = false)
	public void delete(Factory factory) {
		super.delete(factory);
	}
	
}