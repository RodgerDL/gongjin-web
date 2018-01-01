/**
 *
 */
package com.thinkgem.jeesite.modules.cms.entity.gongjin;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 招聘Entity
 * @author Roger
 * @version 2017-10-22
 */
public class GRecruitment extends DataEntity<GRecruitment> {
	
	private static final long serialVersionUID = 1L;
	private String categoryId;		// 种类编号
	private String categoryName;    // 种类名称
	private String jobTitle;		// 职位名称
	private String jobLocation;		// 工作地点
	private String jobResponsibility;		// 工作职责
	private String jobRequirement;		// 岗位要求
	
	public GRecruitment() {
		super();
	}

	public GRecruitment(String id){
		super(id);
	}

	@Length(min=1, max=64, message="种类编号长度必须介于 1 和 64 之间")
	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

    public String getCategoryName() {
        return categoryName;
    }

    public void setCategoryName(String categoryName) {
        this.categoryName = categoryName;
    }

    @Length(min=0, max=255, message="职位名称长度必须介于 0 和 255 之间")
	public String getJobTitle() {
		return jobTitle;
	}

	public void setJobTitle(String jobTitle) {
		this.jobTitle = jobTitle;
	}
	
	@Length(min=0, max=255, message="工作地点长度必须介于 0 和 255 之间")
	public String getJobLocation() {
		return jobLocation;
	}

	public void setJobLocation(String jobLocation) {
		this.jobLocation = jobLocation;
	}
	
	@Length(min=0, max=2000, message="工作职责长度必须介于 0 和 2000 之间")
	public String getJobResponsibility() {
		return jobResponsibility;
	}

	public void setJobResponsibility(String jobResponsibility) {
		this.jobResponsibility = jobResponsibility;
	}
	
	@Length(min=0, max=2000, message="岗位要求长度必须介于 0 和 2000 之间")
	public String getJobRequirement() {
		return jobRequirement;
	}

	public void setJobRequirement(String jobRequirement) {
		this.jobRequirement = jobRequirement;
	}
	
}