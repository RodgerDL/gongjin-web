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
 * 产品Entity
 * @author xw
 * @version 2017-10-22
 */
public class Product extends DataEntity<Product> {

    public static final String DEFAULT_TEMPLATE = "frontViewProduct";
	
	private static final long serialVersionUID = 1L;
	private String id;	// 产品id
    private String kd_id;	// 产品类别id
	private Integer pd_order;	// 产品排序
	private String pd_name;	// 产品名称
	private String pd_nm;// 产品略称
	private String pd_introduce;// 产品描述
	private String pd_img;	// 产品图片
	private String pd_file;// 产品说明
	private String pd_mv;	// 产品视频
	private String pd_title1;
	private String pd_intr1;
	private String pd_title2;
	private String pd_intr2;
	private String pd_title3;
	private String pd_intr3;
	private String pd_title4;
	private String pd_intr4;
	private String pd_title5;
	private String pd_intr5;
	private String pd_title6;
	private String pd_intr6;

	public String getPd_title1() {
		return pd_title1;
	}

	public void setPd_title1(String pd_title1) {
		this.pd_title1 = pd_title1;
	}

	public String getPd_intr1() {
		return pd_intr1;
	}

	public void setPd_intr1(String pd_intr1) {
		this.pd_intr1 = pd_intr1;
	}

	public String getPd_title2() {
		return pd_title2;
	}

	public void setPd_title2(String pd_title2) {
		this.pd_title2 = pd_title2;
	}

	public String getPd_intr2() {
		return pd_intr2;
	}

	public void setPd_intr2(String pd_intr2) {
		this.pd_intr2 = pd_intr2;
	}

	public String getPd_title3() {
		return pd_title3;
	}

	public void setPd_title3(String pd_title3) {
		this.pd_title3 = pd_title3;
	}

	public String getPd_intr3() {
		return pd_intr3;
	}

	public void setPd_intr3(String pd_intr3) {
		this.pd_intr3 = pd_intr3;
	}

	public String getPd_title4() {
		return pd_title4;
	}

	public void setPd_title4(String pd_title4) {
		this.pd_title4 = pd_title4;
	}

	public String getPd_intr4() {
		return pd_intr4;
	}

	public void setPd_intr4(String pd_intr4) {
		this.pd_intr4 = pd_intr4;
	}

	public String getPd_title5() {
		return pd_title5;
	}

	public void setPd_title5(String pd_title5) {
		this.pd_title5 = pd_title5;
	}

	public String getPd_intr5() {
		return pd_intr5;
	}

	public void setPd_intr5(String pd_intr5) {
		this.pd_intr5 = pd_intr5;
	}

	public String getPd_title6() {
		return pd_title6;
	}

	public void setPd_title6(String pd_title6) {
		this.pd_title6 = pd_title6;
	}

	public String getPd_intr6() {
		return pd_intr6;
	}

	public void setPd_intr6(String pd_intr6) {
		this.pd_intr6 = pd_intr6;
	}

	private User user;
    
	public Product() {
		super();
		this.delFlag = DEL_FLAG_NORMAL;
	}

	public Product(String id){
		this();
		this.id = id;
		this.delFlag = DEL_FLAG_NORMAL;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

   	public String getImageSrc() {
        return CmsUtils.formatImageSrcToWeb(this.pd_img);
   	}
   	public String getFileSrc() {
        return CmsUtils.formatImageSrcToWeb(this.pd_file);
   	}
   	public String getMvSrc() {
        return CmsUtils.formatImageSrcToWeb(this.pd_mv);
   	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getKd_id() {
		return kd_id;
	}

	public void setKd_id(String kd_id) {
		this.kd_id = kd_id;
	}

	public Integer getPd_order() {
		return pd_order;
	}

	public void setPd_order(Integer pd_order) {
		this.pd_order = pd_order;
	}

	public String getPd_name() {
		return pd_name;
	}

	public void setPd_name(String pd_name) {
		this.pd_name = pd_name;
	}

	public String getPd_nm() {
		return pd_nm;
	}

	public void setPd_nm(String pd_nm) {
		this.pd_nm = pd_nm;
	}

	public String getPd_introduce() {
		return pd_introduce;
	}

	public void setPd_introduce(String pd_introduce) {
		this.pd_introduce = pd_introduce;
	}

	public String getPd_img() {
		return pd_img;
	}

	public void setPd_img(String pd_img) {
		this.pd_img = pd_img;
	}

	public String getPd_file() {
		return pd_file;
	}

	public void setPd_file(String pd_file) {
		this.pd_file = pd_file;
	}

	public String getPd_mv() {
		return pd_mv;
	}

	public void setPd_mv(String pd_mv) {
		this.pd_mv = pd_mv;
	}
	
}


