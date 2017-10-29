/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.entity;

import java.util.Date;
import java.util.List;

import javax.validation.constraints.NotNull;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.modules.sys.entity.User;
import com.google.common.collect.Lists;
import com.thinkgem.jeesite.common.persistence.DataEntity;
import com.thinkgem.jeesite.modules.cms.utils.CmsUtils;

/**
 * 产品类别Entity
 * @author xw
 * @version 2017-10-22
 */
public class ProductKind extends DataEntity<ProductKind> {

    public static final String DEFAULT_TEMPLATE = "frontViewProductKind";
	
	private static final long serialVersionUID = 1L;
	private String id;	// id
    private String kd_name;	// 产品类别名称
	private String kd_nm;	// 产品类别略称
	private Integer kd_order;	// 产品类别排序

	private List<Product> productList;	//文章副表

	private User user;
    
	public ProductKind() {
		super();
		this.delFlag = DEL_FLAG_NORMAL;
	}

	public ProductKind(String id){
		this();
		this.id = id;
		this.delFlag = DEL_FLAG_NORMAL;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getKd_name() {
		return kd_name;
	}

	public void setKd_name(String kd_name) {
		this.kd_name = kd_name;
	}

	public String getKd_nm() {
		return kd_nm;
	}

	public void setKd_nm(String kd_nm) {
		this.kd_nm = kd_nm;
	}

	public Integer getKd_order() {
		return kd_order;
	}

	public void setKd_order(Integer kd_order) {
		this.kd_order = kd_order;
	}

	public List<Product> getProductList() {
		return productList;
	}

	public void setProductList(List<Product> productList) {
		this.productList = productList;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}
}


