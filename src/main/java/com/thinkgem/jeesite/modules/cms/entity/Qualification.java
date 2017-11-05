/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 资质认证Entity
 * @author xw
 * @version 2017-11-02
 */
public class Qualification extends DataEntity<Qualification> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 认证名
	private String content;		// 认证内容
	private String img;		// 证书照片
	
	public Qualification() {
		super();
	}

	public Qualification(String id){
		super(id);
	}

	@Length(min=0, max=225, message="认证名长度必须介于 0 和 225 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=1000, message="认证内容长度必须介于 0 和 1000 之间")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Length(min=0, max=225, message="证书照片长度必须介于 0 和 225 之间")
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
}