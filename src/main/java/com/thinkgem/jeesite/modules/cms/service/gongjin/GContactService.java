/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.service.gongjin;

import java.util.List;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.Contact;
import com.thinkgem.jeesite.modules.cms.entity.gongjin.GRecruitment;
import com.thinkgem.jeesite.modules.cms.dao.ContactDao;
import com.thinkgem.jeesite.modules.cms.dao.gongjin.GRecruitmentDao;

/**
 * 联系我们Service
 * @author xw
 * @version 2017-10-22
 */
@Service
@Transactional(readOnly = true)
public class GContactService extends CrudService<ContactDao, Contact> {

	public Contact get(String id) {
		return super.get(id);
	}
	
	public List<Contact> findList(Contact contact) {
		return super.findList(contact);
	}
	
	public Page<Contact> findPage(Page<Contact> page, Contact contact) {
		return super.findPage(page, contact);
	}
	
}