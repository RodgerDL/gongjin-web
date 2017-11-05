/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.entity;

import java.util.List;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 企业相关Entity
 * @author xw
 * @version 2017-10-31
 */
public class CompanyInfo extends DataEntity<CompanyInfo> {
	
	private static final long serialVersionUID = 1L;

	private List<SuccCase> succCaseList;	//成功案例
	private List<Factory> factoryList;	//工厂信息
	private List<Introduce> introduceList;	//公司介绍
	private List<Manage> manageList;	//公司管理
	private List<Member> memberList;	//公司团队
	private List<Partner> partnerList;	//合作伙伴
	private List<Qualification> qualificationList;	//资质认证
	private List<Technology> technologyList;	//技术能力
	
	public CompanyInfo() {
		super();
	}

	public List<SuccCase> getSuccCaseList() {
		return succCaseList;
	}

	public void setSuccCaseList(List<SuccCase> succCaseList) {
		this.succCaseList = succCaseList;
	}

	public List<Factory> getFactoryList() {
		return factoryList;
	}

	public void setFactoryList(List<Factory> factoryList) {
		this.factoryList = factoryList;
	}

	public List<Introduce> getIntroduceList() {
		return introduceList;
	}

	public void setIntroduceList(List<Introduce> introduceList) {
		this.introduceList = introduceList;
	}

	public List<Manage> getManageList() {
		return manageList;
	}

	public void setManageList(List<Manage> manageList) {
		this.manageList = manageList;
	}

	public List<Member> getMemberList() {
		return memberList;
	}

	public void setMemberList(List<Member> memberList) {
		this.memberList = memberList;
	}

	public List<Partner> getPartnerList() {
		return partnerList;
	}

	public void setPartnerList(List<Partner> partnerList) {
		this.partnerList = partnerList;
	}

	public List<Qualification> getQualificationList() {
		return qualificationList;
	}

	public void setQualificationList(List<Qualification> qualificationList) {
		this.qualificationList = qualificationList;
	}

	public List<Technology> getTechnologyList() {
		return technologyList;
	}

	public void setTechnologyList(List<Technology> technologyList) {
		this.technologyList = technologyList;
	}
}