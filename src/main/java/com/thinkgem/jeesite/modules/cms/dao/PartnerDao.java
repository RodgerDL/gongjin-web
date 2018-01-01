/**
 *
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Partner;

/**
 * 合作伙伴DAO接口
 * @author xw
 * @version 2017-11-02
 */
@MyBatisDao
public interface PartnerDao extends CrudDao<Partner> {
	
}