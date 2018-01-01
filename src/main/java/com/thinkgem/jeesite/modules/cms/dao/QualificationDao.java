/**
 *
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Qualification;

/**
 * 资质认证DAO接口
 * @author xw
 * @version 2017-11-02
 */
@MyBatisDao
public interface QualificationDao extends CrudDao<Qualification> {
	
}