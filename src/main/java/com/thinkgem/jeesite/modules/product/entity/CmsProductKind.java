/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.product.entity;

import org.hibernate.validator.constraints.Length;
import java.util.List;
import com.google.common.collect.Lists;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 产品管理Entity
 * @author xw
 * @version 2017-10-21
 */
public class CmsProductKind extends DataEntity<CmsProductKind> {
	
	private static final long serialVersionUID = 1L;
	private String kdName;		// 分类名称
	private String kdNm;		// 分类略称
	private String kdOrder;		// 分类排序
	private List<CmsProduct> cmsProductList = Lists.newArrayList();		// 子表列表
	
	public CmsProductKind() {
		super();
	}

	public CmsProductKind(String id){
		super(id);
	}

	@Length(min=1, max=225, message="分类名称长度必须介于 1 和 225 之间")
	public String getKdName() {
		return kdName;
	}

	public void setKdName(String kdName) {
		this.kdName = kdName;
	}
	
	@Length(min=0, max=225, message="分类略称长度必须介于 0 和 225 之间")
	public String getKdNm() {
		return kdNm;
	}

	public void setKdNm(String kdNm) {
		this.kdNm = kdNm;
	}
	
	@Length(min=0, max=11, message="分类排序长度必须介于 0 和 11 之间")
	public String getKdOrder() {
		return kdOrder;
	}

	public void setKdOrder(String kdOrder) {
		this.kdOrder = kdOrder;
	}
	
	public List<CmsProduct> getCmsProductList() {
		return cmsProductList;
	}

	public void setCmsProductList(List<CmsProduct> cmsProductList) {
		this.cmsProductList = cmsProductList;
	}
}