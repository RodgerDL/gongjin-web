/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.SuccCase;
import com.thinkgem.jeesite.modules.cms.dao.SuccCaseDao;

/**
 * 成功案例Service
 * @author xw
 * @version 2017-11-03
 */
@Service
@Transactional(readOnly = true)
public class SuccCaseService extends CrudService<SuccCaseDao, SuccCase> {

	public SuccCase get(String id) {
		return super.get(id);
	}
	
	public List<SuccCase> findList(SuccCase succCase) {
		return super.findList(succCase);
	}
	
	public Page<SuccCase> findPage(Page<SuccCase> page, SuccCase succCase) {
		return super.findPage(page, succCase);
	}
	
	@Transactional(readOnly = false)
	public void save(SuccCase succCase) {
		super.save(succCase);
	}
	
	@Transactional(readOnly = false)
	public void delete(SuccCase succCase) {
		super.delete(succCase);
	}
	
}