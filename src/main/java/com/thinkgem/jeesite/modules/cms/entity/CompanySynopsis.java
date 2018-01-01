/**
 *
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 公司简介Entity
 * @author xw
 * @version 2017-11-12
 */
public class CompanySynopsis extends DataEntity<CompanySynopsis> {
	
	private static final long serialVersionUID = 1L;
	private String title;		// 标题
	private String content;		// 内容
	private String icon;		// 图标
	
	public CompanySynopsis() {
		super();
	}

	public CompanySynopsis(String id){
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
	
	@Length(min=0, max=225, message="图标长度必须介于 0 和 225 之间")
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
	
}