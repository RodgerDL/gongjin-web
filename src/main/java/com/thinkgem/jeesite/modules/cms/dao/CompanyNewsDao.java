/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.CompanyNews;

/**
 * 公司动态DAO接口
 * @author xw
 * @version 2017-11-12
 */
@MyBatisDao
public interface CompanyNewsDao extends CrudDao<CompanyNews> {
	
}