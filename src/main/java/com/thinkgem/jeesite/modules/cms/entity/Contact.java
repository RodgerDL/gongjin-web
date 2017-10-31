/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 联系方式Entity
 * @author xw
 * @version 2017-10-31
 */
public class Contact extends DataEntity<Contact> {
	
	private static final long serialVersionUID = 1L;
	private String contacts;		// 联系人
	private String address;		// 地址
	private String phone;		// 电话
	private String fax;		// 传真
	private String mail;		// 邮件
	private String weixin;		// 微信
	private String qq;		// QQ
	private String msn;		// MSN
	private String facebook;		// FACEBOOK
	private String skype;		// SKYPE
	
	public Contact() {
		super();
	}

	public Contact(String id){
		super(id);
	}

	@Length(min=0, max=225, message="联系人长度必须介于 0 和 225 之间")
	public String getContacts() {
		return contacts;
	}

	public void setContacts(String contacts) {
		this.contacts = contacts;
	}
	
	@Length(min=0, max=225, message="地址长度必须介于 0 和 225 之间")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=0, max=225, message="电话长度必须介于 0 和 225 之间")
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	@Length(min=0, max=225, message="传真长度必须介于 0 和 225 之间")
	public String getFax() {
		return fax;
	}

	public void setFax(String fax) {
		this.fax = fax;
	}
	
	@Length(min=0, max=225, message="邮件长度必须介于 0 和 225 之间")
	public String getMail() {
		return mail;
	}

	public void setMail(String mail) {
		this.mail = mail;
	}
	
	@Length(min=0, max=225, message="微信长度必须介于 0 和 225 之间")
	public String getWeixin() {
		return weixin;
	}

	public void setWeixin(String weixin) {
		this.weixin = weixin;
	}
	
	@Length(min=0, max=225, message="QQ长度必须介于 0 和 225 之间")
	public String getQq() {
		return qq;
	}

	public void setQq(String qq) {
		this.qq = qq;
	}
	
	@Length(min=0, max=225, message="MSN长度必须介于 0 和 225 之间")
	public String getMsn() {
		return msn;
	}

	public void setMsn(String msn) {
		this.msn = msn;
	}
	
	@Length(min=0, max=225, message="FACEBOOK长度必须介于 0 和 225 之间")
	public String getFacebook() {
		return facebook;
	}

	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	
	@Length(min=0, max=225, message="SKYPE长度必须介于 0 和 225 之间")
	public String getSkype() {
		return skype;
	}

	public void setSkype(String skype) {
		this.skype = skype;
	}
	
}