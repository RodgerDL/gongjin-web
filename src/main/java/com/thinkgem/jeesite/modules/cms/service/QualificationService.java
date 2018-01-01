/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.Qualification;
import com.thinkgem.jeesite.modules.cms.dao.QualificationDao;

/**
 * 资质认证Service
 * @author xw
 * @version 2017-11-02
 */
@Service
@Transactional(readOnly = true)
public class QualificationService extends CrudService<QualificationDao, Qualification> {

	public Qualification get(String id) {
		return super.get(id);
	}
	
	public List<Qualification> findList(Qualification qualification) {
		return super.findList(qualification);
	}
	
	public Page<Qualification> findPage(Page<Qualification> page, Qualification qualification) {
		return super.findPage(page, qualification);
	}
	
	@Transactional(readOnly = false)
	public void save(Qualification qualification) {
		super.save(qualification);
	}
	
	@Transactional(readOnly = false)
	public void delete(Qualification qualification) {
		super.delete(qualification);
	}
	
}