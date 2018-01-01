package com.thinkgem.jeesite.modules.product.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.product.entity.CmsProduct;

/**
 * 产品管理DAO接口
 * @author xw
 * @version 2017-10-21
 */
@MyBatisDao
public interface CmsProductDao extends CrudDao<CmsProduct> {
	
}