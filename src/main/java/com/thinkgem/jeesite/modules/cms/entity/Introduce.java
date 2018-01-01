/**
 *
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 公司介绍Entity
 * @author xw
 * @version 2017-11-02
 */
public class Introduce extends DataEntity<Introduce> {
	
	private static final long serialVersionUID = 1L;
	private String detailed;		// 公司介绍
	private String civilization;		// 公司文化介绍
	private String civilization1;		// 文化标语1
	private String civilization2;		// 文化标语2
	private String civilization3;		// 文化标语3
	
	public Introduce() {
		super();
	}

	public Introduce(String id){
		super(id);
	}

	@Length(min=0, max=1000, message="公司介绍长度必须介于 0 和 1000 之间")
	public String getDetailed() {
		return detailed;
	}

	public void setDetailed(String detailed) {
		this.detailed = detailed;
	}
	
	@Length(min=0, max=1000, message="公司文化介绍长度必须介于 0 和 1000 之间")
	public String getCivilization() {
		return civilization;
	}

	public void setCivilization(String civilization) {
		this.civilization = civilization;
	}
	
	@Length(min=0, max=45, message="文化标语1长度必须介于 0 和 45 之间")
	public String getCivilization1() {
		return civilization1;
	}

	public void setCivilization1(String civilization1) {
		this.civilization1 = civilization1;
	}
	
	@Length(min=0, max=45, message="文化标语2长度必须介于 0 和 45 之间")
	public String getCivilization2() {
		return civilization2;
	}

	public void setCivilization2(String civilization2) {
		this.civilization2 = civilization2;
	}
	
	@Length(min=0, max=45, message="文化标语3长度必须介于 0 和 45 之间")
	public String getCivilization3() {
		return civilization3;
	}

	public void setCivilization3(String civilization3) {
		this.civilization3 = civilization3;
	}
	
}