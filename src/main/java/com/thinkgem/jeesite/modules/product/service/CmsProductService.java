/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.product.entity.CmsProduct;
import com.thinkgem.jeesite.modules.product.dao.CmsProductDao;

/**
 * 产品管理Service
 * @author xw
 * @version 2017-10-21
 */
@Service
@Transactional(readOnly = true)
public class CmsProductService extends CrudService<CmsProductDao, CmsProduct> {

	
	public CmsProduct get(String id) {
		CmsProduct cmsProduct = super.get(id);
		return cmsProduct;
	}
	
	public List<CmsProduct> findList(CmsProduct cmsProduct) {
		return super.findList(cmsProduct);
	}
	
	public Page<CmsProduct> findPage(Page<CmsProduct> page, CmsProduct cmsProduct) {
		return super.findPage(page, cmsProduct);
	}
	
	@Transactional(readOnly = false)
	public void save(CmsProduct cmsProduct) {
		super.save(cmsProduct);
	}
	
	@Transactional(readOnly = false)
	public void delete(CmsProduct cmsProduct) {
		super.delete(cmsProduct);
	}
	
}