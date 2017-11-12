/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 公司动态Entity
 * @author xw
 * @version 2017-11-12
 */
public class CompanyNews extends DataEntity<CompanyNews> {
	
	private static final long serialVersionUID = 1L;
	private String title;		// 标题
	private String content;		// 内容
	private String newsNumber;		// 序号
	private String newsDate;		// 时间
	private String img;		// 图片
	
	public CompanyNews() {
		super();
	}

	public CompanyNews(String id){
		super(id);
	}

	@Length(min=0, max=225, message="标题长度必须介于 0 和 225 之间")
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	@Length(min=0, max=1000, message="内容长度必须介于 0 和 1000 之间")
	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
	@Length(min=0, max=64, message="序号长度必须介于 0 和 64 之间")
	public String getNewsNumber() {
		return newsNumber;
	}

	public void setNewsNumber(String newsNumber) {
		this.newsNumber = newsNumber;
	}
	
	@Length(min=0, max=64, message="时间长度必须介于 0 和 64 之间")
	public String getNewsDate() {
		return newsDate;
	}

	public void setNewsDate(String newsDate) {
		this.newsDate = newsDate;
	}
	
	@Length(min=0, max=225, message="图片长度必须介于 0 和 225 之间")
	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
	
}