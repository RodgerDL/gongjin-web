/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service.gongjin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.modules.cms.dao.FactoryDao;
import com.thinkgem.jeesite.modules.cms.dao.IntroduceDao;
import com.thinkgem.jeesite.modules.cms.dao.ManageDao;
import com.thinkgem.jeesite.modules.cms.dao.MemberDao;
import com.thinkgem.jeesite.modules.cms.dao.PartnerDao;
import com.thinkgem.jeesite.modules.cms.dao.QualificationDao;
import com.thinkgem.jeesite.modules.cms.dao.SuccCaseDao;
import com.thinkgem.jeesite.modules.cms.dao.TechnologyDao;
import com.thinkgem.jeesite.modules.cms.entity.CompanyInfo;
import com.thinkgem.jeesite.modules.cms.entity.Factory;
import com.thinkgem.jeesite.modules.cms.entity.Introduce;
import com.thinkgem.jeesite.modules.cms.entity.Manage;
import com.thinkgem.jeesite.modules.cms.entity.Member;
import com.thinkgem.jeesite.modules.cms.entity.Partner;
import com.thinkgem.jeesite.modules.cms.entity.Qualification;
import com.thinkgem.jeesite.modules.cms.entity.SuccCase;
import com.thinkgem.jeesite.modules.cms.entity.Technology;

/**
 * 企业相关Service
 * @author xw
 * @version 2017-10-22
 */
@Service
@Transactional(readOnly = true)
public class GCompanyInfoService {

    @Autowired
    private SuccCaseDao succCaseDao;
    @Autowired
    private FactoryDao factoryDao;
    @Autowired
    private IntroduceDao introduceDao;
    @Autowired
    private ManageDao manageDao;
    @Autowired
    private MemberDao memberDao;
    @Autowired
    private PartnerDao partnerDao;
    @Autowired
    private QualificationDao qualificationDao;
    @Autowired
    private TechnologyDao technologyDao;

    /**
     * 企业相关列表
     * @return new page
     */
    @Transactional(readOnly = false)
    public CompanyInfo getCompanyInfo() {
    	
    	List<SuccCase> succCaseList = succCaseDao.findList(new SuccCase());
    	List<Factory> factoryList = factoryDao.findList(new Factory());
    	List<Introduce> introduceList = introduceDao.findList(new Introduce());
    	List<Manage> manageList = manageDao.findList(new Manage());
    	List<Member> memberList = memberDao.findList(new Member());
    	List<Partner> partnerList = partnerDao.findList(new Partner());
    	List<Qualification> qualificationList = qualificationDao.findList(new Qualification());
    	List<Technology> technologyList = technologyDao.findList(new Technology());
    	
    	CompanyInfo companyInfo = new CompanyInfo();
    	companyInfo.setSuccCaseList(succCaseList);
    	companyInfo.setFactoryList(factoryList);
    	companyInfo.setIntroduceList(introduceList);
    	companyInfo.setManageList(manageList);
    	companyInfo.setMemberList(memberList);
    	companyInfo.setPartnerList(partnerList);
    	companyInfo.setQualificationList(qualificationList);
    	companyInfo.setTechnologyList(technologyList);
    	
    	return companyInfo;
    }
}
