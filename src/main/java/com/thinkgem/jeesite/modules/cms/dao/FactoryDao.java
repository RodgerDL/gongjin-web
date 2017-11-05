/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Factory;

/**
 * 工厂信息DAO接口
 * @author xw
 * @version 2017-11-02
 */
@MyBatisDao
public interface FactoryDao extends CrudDao<Factory> {
	
}