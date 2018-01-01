/**
 *
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Manage;

/**
 * 公司管理DAO接口
 * @author xw
 * @version 2017-11-02
 */
@MyBatisDao
public interface ManageDao extends CrudDao<Manage> {
	
}