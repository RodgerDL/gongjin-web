/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.product.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 产品管理Entity
 * @author xw
 * @version 2017-10-21
 */
public class CmsProduct extends DataEntity<CmsProduct> {
	
	private static final long serialVersionUID = 1L;
	private CmsProductKind cmsProductKind;		// 产品分类 父类
	private String pdOrder;		// 表示顺序
	private String pdName;		// 产品名称
	private String pdNm;		// 产品略称
	private String pdIntroduce;		// 产品介绍
	private String pdImg;		// 产品图片
	private String pdFile;		// 产品文档
	private String pdMv;		// 产品视频
	private String pdTitle1;		// 属性标题1
	private String pdIntr1;		// 属性描述1
	private String pdTitle2;		// 属性标题2
	private String pdIntr2;		// 属性描述2
	private String pdTitle3;		// 属性标题3
	private String pdIntr3;		// 属性描述3
	private String pdTitle4;		// 属性标题4
	private String pdIntr4;		// 属性描述4
	private String pdTitle5;		// 属性标题5
	private String pdIntr5;		// 属性描述5
	private String pdTitle6;		// 属性标题6
	private String pdIntr6;		// 属性描述6
	
	public CmsProduct() {
		super();
	}

	public CmsProduct(String id){
		super(id);
	}

	public CmsProduct(CmsProductKind cmsProductKind){
		this.cmsProductKind = cmsProductKind;
	}

	@Length(min=1, max=64, message="产品分类长度必须介于 1 和 64 之间")
	public CmsProductKind getCmsProductKind() {
		return cmsProductKind;
	}

	public void setCmsProductKind(CmsProductKind cmsProductKind) {
		this.cmsProductKind = cmsProductKind;
	}
	
	@Length(min=0, max=11, message="表示顺序长度必须介于 0 和 11 之间")
	public String getPdOrder() {
		return pdOrder;
	}

	public void setPdOrder(String pdOrder) {
		this.pdOrder = pdOrder;
	}
	
	@Length(min=1, max=255, message="产品名称长度必须介于 1 和 255 之间")
	public String getPdName() {
		return pdName;
	}

	public void setPdName(String pdName) {
		this.pdName = pdName;
	}
	
	@Length(min=0, max=255, message="产品略称长度必须介于 0 和 255 之间")
	public String getPdNm() {
		return pdNm;
	}

	public void setPdNm(String pdNm) {
		this.pdNm = pdNm;
	}
	
	@Length(min=0, max=255, message="产品介绍长度必须介于 0 和 255 之间")
	public String getPdIntroduce() {
		return pdIntroduce;
	}

	public void setPdIntroduce(String pdIntroduce) {
		this.pdIntroduce = pdIntroduce;
	}
	
	@Length(min=0, max=255, message="产品图片长度必须介于 0 和 255 之间")
	public String getPdImg() {
		return pdImg;
	}

	public void setPdImg(String pdImg) {
		this.pdImg = pdImg;
	}
	
	@Length(min=0, max=255, message="产品文档长度必须介于 0 和 255 之间")
	public String getPdFile() {
		return pdFile;
	}

	public void setPdFile(String pdFile) {
		this.pdFile = pdFile;
	}
	
	@Length(min=0, max=255, message="产品视频长度必须介于 0 和 255 之间")
	public String getPdMv() {
		return pdMv;
	}

	public void setPdMv(String pdMv) {
		this.pdMv = pdMv;
	}
	
	@Length(min=0, max=255, message="属性标题1长度必须介于 0 和 255 之间")
	public String getPdTitle1() {
		return pdTitle1;
	}

	public void setPdTitle1(String pdTitle1) {
		this.pdTitle1 = pdTitle1;
	}
	
	@Length(min=0, max=255, message="属性描述1长度必须介于 0 和 255 之间")
	public String getPdIntr1() {
		return pdIntr1;
	}

	public void setPdIntr1(String pdIntr1) {
		this.pdIntr1 = pdIntr1;
	}
	
	@Length(min=0, max=255, message="属性标题2长度必须介于 0 和 255 之间")
	public String getPdTitle2() {
		return pdTitle2;
	}

	public void setPdTitle2(String pdTitle2) {
		this.pdTitle2 = pdTitle2;
	}
	
	@Length(min=0, max=255, message="属性描述2长度必须介于 0 和 255 之间")
	public String getPdIntr2() {
		return pdIntr2;
	}

	public void setPdIntr2(String pdIntr2) {
		this.pdIntr2 = pdIntr2;
	}
	
	@Length(min=0, max=255, message="属性标题3长度必须介于 0 和 255 之间")
	public String getPdTitle3() {
		return pdTitle3;
	}

	public void setPdTitle3(String pdTitle3) {
		this.pdTitle3 = pdTitle3;
	}
	
	@Length(min=0, max=255, message="属性描述3长度必须介于 0 和 255 之间")
	public String getPdIntr3() {
		return pdIntr3;
	}

	public void setPdIntr3(String pdIntr3) {
		this.pdIntr3 = pdIntr3;
	}
	
	@Length(min=0, max=255, message="属性标题4长度必须介于 0 和 255 之间")
	public String getPdTitle4() {
		return pdTitle4;
	}

	public void setPdTitle4(String pdTitle4) {
		this.pdTitle4 = pdTitle4;
	}
	
	@Length(min=0, max=255, message="属性描述4长度必须介于 0 和 255 之间")
	public String getPdIntr4() {
		return pdIntr4;
	}

	public void setPdIntr4(String pdIntr4) {
		this.pdIntr4 = pdIntr4;
	}
	
	@Length(min=0, max=255, message="属性标题5长度必须介于 0 和 255 之间")
	public String getPdTitle5() {
		return pdTitle5;
	}

	public void setPdTitle5(String pdTitle5) {
		this.pdTitle5 = pdTitle5;
	}
	
	@Length(min=0, max=255, message="属性描述5长度必须介于 0 和 255 之间")
	public String getPdIntr5() {
		return pdIntr5;
	}

	public void setPdIntr5(String pdIntr5) {
		this.pdIntr5 = pdIntr5;
	}
	
	@Length(min=0, max=255, message="属性标题6长度必须介于 0 和 255 之间")
	public String getPdTitle6() {
		return pdTitle6;
	}

	public void setPdTitle6(String pdTitle6) {
		this.pdTitle6 = pdTitle6;
	}
	
	@Length(min=0, max=255, message="属性描述6长度必须介于 0 和 255 之间")
	public String getPdIntr6() {
		return pdIntr6;
	}

	public void setPdIntr6(String pdIntr6) {
		this.pdIntr6 = pdIntr6;
	}
	
}