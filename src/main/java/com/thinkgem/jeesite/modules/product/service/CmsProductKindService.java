/**
 *
 */
package com.thinkgem.jeesite.modules.product.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.product.entity.CmsProductKind;
import com.thinkgem.jeesite.modules.product.dao.CmsProductKindDao;
import com.thinkgem.jeesite.modules.product.entity.CmsProduct;
import com.thinkgem.jeesite.modules.product.dao.CmsProductDao;

/**
 * 产品管理Service
 * @author xw
 * @version 2017-10-21
 */
@Service
@Transactional(readOnly = true)
public class CmsProductKindService extends CrudService<CmsProductKindDao, CmsProductKind> {

	@Autowired
	private CmsProductDao cmsProductDao;
	
	public CmsProductKind get(String id) {
		CmsProductKind cmsProductKind = super.get(id);
		cmsProductKind.setCmsProductList(cmsProductDao.findList(new CmsProduct(cmsProductKind)));
		return cmsProductKind;
	}
	
	public List<CmsProductKind> findList(CmsProductKind cmsProductKind) {
		return super.findList(cmsProductKind);
	}
	
	public Page<CmsProductKind> findPage(Page<CmsProductKind> page, CmsProductKind cmsProductKind) {
		return super.findPage(page, cmsProductKind);
	}
	
	@Transactional(readOnly = false)
	public void save(CmsProductKind cmsProductKind) {
		super.save(cmsProductKind);
		for (CmsProduct cmsProduct : cmsProductKind.getCmsProductList()){
			if (cmsProduct.getId() == null){
				continue;
			}
			if (CmsProduct.DEL_FLAG_NORMAL.equals(cmsProduct.getDelFlag())){
				if (StringUtils.isBlank(cmsProduct.getId())){
					cmsProduct.setCmsProductKind(cmsProductKind);
					cmsProduct.preInsert();
					cmsProductDao.insert(cmsProduct);
				}else{
					cmsProduct.preUpdate();
					cmsProductDao.update(cmsProduct);
				}
			}else{
				cmsProductDao.delete(cmsProduct);
			}
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(CmsProductKind cmsProductKind) {
		super.delete(cmsProductKind);
		cmsProductDao.delete(new CmsProduct(cmsProductKind));
	}
	
}