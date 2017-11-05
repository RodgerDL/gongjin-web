/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.Technology;
import com.thinkgem.jeesite.modules.cms.dao.TechnologyDao;

/**
 * 技术能力Service
 * @author xw
 * @version 2017-11-02
 */
@Service
@Transactional(readOnly = true)
public class TechnologyService extends CrudService<TechnologyDao, Technology> {

	public Technology get(String id) {
		return super.get(id);
	}
	
	public List<Technology> findList(Technology technology) {
		return super.findList(technology);
	}
	
	public Page<Technology> findPage(Page<Technology> page, Technology technology) {
		return super.findPage(page, technology);
	}
	
	@Transactional(readOnly = false)
	public void save(Technology technology) {
		super.save(technology);
	}
	
	@Transactional(readOnly = false)
	public void delete(Technology technology) {
		super.delete(technology);
	}
	
}