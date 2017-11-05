/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Member;

/**
 * 公司团队DAO接口
 * @author xw
 * @version 2017-11-02
 */
@MyBatisDao
public interface MemberDao extends CrudDao<Member> {
	
}