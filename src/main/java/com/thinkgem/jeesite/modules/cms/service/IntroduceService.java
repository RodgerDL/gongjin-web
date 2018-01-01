/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.Introduce;
import com.thinkgem.jeesite.modules.cms.dao.IntroduceDao;

/**
 * 公司介绍Service
 * @author xw
 * @version 2017-11-02
 */
@Service
@Transactional(readOnly = true)
public class IntroduceService extends CrudService<IntroduceDao, Introduce> {

	public Introduce get(String id) {
		return super.get(id);
	}
	
	public List<Introduce> findList(Introduce introduce) {
		return super.findList(introduce);
	}
	
	public Page<Introduce> findPage(Page<Introduce> page, Introduce introduce) {
		return super.findPage(page, introduce);
	}
	
	@Transactional(readOnly = false)
	public void save(Introduce introduce) {
		super.save(introduce);
	}
	
	@Transactional(readOnly = false)
	public void delete(Introduce introduce) {
		super.delete(introduce);
	}
	
}