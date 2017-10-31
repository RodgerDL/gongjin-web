/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.cms.entity.Contact;

/**
 * 联系方式DAO接口
 * @author xw
 * @version 2017-10-31
 */
@MyBatisDao
public interface ContactDao extends CrudDao<Contact> {
	
}