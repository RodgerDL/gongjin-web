/**
 *
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.CompanySynopsis;

/**
 * 公司简介DAO接口
 * @author xw
 * @version 2017-11-12
 */
@MyBatisDao
public interface CompanySynopsisDao extends CrudDao<CompanySynopsis> {
	
}