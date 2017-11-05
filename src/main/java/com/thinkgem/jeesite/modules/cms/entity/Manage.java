/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 公司管理Entity
 * @author xw
 * @version 2017-11-02
 */
public class Manage extends DataEntity<Manage> {
	
	private static final long serialVersionUID = 1L;
	private String content;		// 管理认证
	
	public Manage() {
		super();
	}

	public Manage(String id){
		super(id);
	}

	@Length(min=0, max=1000, message="管理认证长度必须介于 0 和 1000 之间")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}