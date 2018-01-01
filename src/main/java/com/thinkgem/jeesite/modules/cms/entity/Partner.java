/**
 *
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 合作伙伴Entity
 * @author xw
 * @version 2017-11-02
 */
public class Partner extends DataEntity<Partner> {
	
	private static final long serialVersionUID = 1L;
	private String name;		// 名字
	private String icon;		// 图标
	
	public Partner() {
		super();
	}

	public Partner(String id){
		super(id);
	}

	@Length(min=0, max=64, message="名字长度必须介于 0 和 64 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=225, message="图标长度必须介于 0 和 225 之间")
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}
	
}