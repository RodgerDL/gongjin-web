/**
 *
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 工厂信息Entity
 * @author xw
 * @version 2017-11-02
 */
public class Factory extends DataEntity<Factory> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 工厂名
	private String address;		// 工厂地址
	private String img;		// 图片
	private String introduce;		// 介绍
	
	public Factory() {
		super();
	}

	public Factory(String id){
		super(id);
	}

	@Length(min=0, max=225, message="工厂名长度必须介于 0 和 225 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=225, message="工厂地址长度必须介于 0 和 225 之间")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=0, max=225, message="图片长度必须介于 0 和 225 之间")
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
	@Length(min=0, max=225, message="介绍长度必须介于 0 和 225 之间")
	public String getIntroduce() {
		return introduce;
	}

	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	
}