/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service.gongjin;

import java.util.List;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.cms.entity.gongjin.GRecruitment;
import com.thinkgem.jeesite.modules.cms.dao.gongjin.GRecruitmentDao;

/**
 * 招聘Service
 * @author Roger
 * @version 2017-10-22
 */
@Service
@Transactional(readOnly = true)
public class GRecruitmentService extends CrudService<GRecruitmentDao, GRecruitment> {

	public GRecruitment get(String id) {
		return super.get(id);
	}
	
	public List<GRecruitment> findList(GRecruitment cmsRecruitment) {
		return super.findList(cmsRecruitment);
	}
	
	public Page<GRecruitment> findPage(Page<GRecruitment> page, GRecruitment cmsRecruitment) {
		return super.findPage(page, cmsRecruitment);
	}
	
	@Transactional(readOnly = false)
	public void save(GRecruitment cmsRecruitment) {
		if (cmsRecruitment.getJobRequirement()!=null){
			cmsRecruitment.setJobRequirement(StringEscapeUtils.unescapeHtml4(
					cmsRecruitment.getJobRequirement()));
		}
		if (cmsRecruitment.getJobResponsibility()!=null){
			cmsRecruitment.setJobResponsibility(StringEscapeUtils.unescapeHtml4(
					cmsRecruitment.getJobResponsibility()));
		}
		super.save(cmsRecruitment);
	}
	
	@Transactional(readOnly = false)
	public void delete(GRecruitment cmsRecruitment) {
		super.delete(cmsRecruitment);
	}
	
}