/**
 *
 */
package com.thinkgem.jeesite.modules.cms.service.gongjin;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.common.utils.StringUtils;
import com.thinkgem.jeesite.modules.cms.dao.ArticleDao;
import com.thinkgem.jeesite.modules.cms.dao.ArticleDataDao;
import com.thinkgem.jeesite.modules.cms.dao.CategoryDao;
import com.thinkgem.jeesite.modules.cms.entity.Article;
import com.thinkgem.jeesite.modules.cms.entity.Category;
import com.thinkgem.jeesite.modules.cms.entity.Product;
import com.thinkgem.jeesite.modules.cms.entity.ProductKind;
import com.thinkgem.jeesite.modules.product.dao.CmsProductDao;
import com.thinkgem.jeesite.modules.product.dao.CmsProductKindDao;
import com.thinkgem.jeesite.modules.product.entity.CmsProduct;
import com.thinkgem.jeesite.modules.product.entity.CmsProductKind;

/**
 * 产品Service
 * @author xw
 * @version 2017-10-22
 */
@Service
@Transactional(readOnly = true)
public class GProductService extends CrudService<CmsProductDao, CmsProduct> {

    @Autowired
    private CmsProductKindDao productKindDao;
    @Autowired
    private CmsProductDao productDao;

    /**
     * 产品列表
     * @return new page
     */
    @Transactional(readOnly = false)
    public List<ProductKind> getProduct() {
    	
    	List<ProductKind> productKindList = new ArrayList<ProductKind>();
    	List<Product> productList;
    	
    	List<CmsProductKind> productKindEntityList;
    	List<CmsProduct> productEntityList;
    	
    	CmsProductKind productKindEntity = new CmsProductKind();
    	productKindEntityList = new ArrayList<CmsProductKind>();
    	productKindEntityList = productKindDao.findAllList(productKindEntity);
    	
    	for(int i = 0; i < productKindEntityList.size(); i++) {
    		CmsProduct productEntity = new CmsProduct();
    		productEntity.setCmsProductKind(productKindEntityList.get(i));
    		
    		productEntityList = new ArrayList<CmsProduct>();
    		productEntityList = productDao.findList(productEntity);
    		
    		productList = new ArrayList<Product>();
    		for(int j = 0; j < productEntityList.size(); j++) {
    			
    			Product product = new Product();
    			product.setPd_name(productEntityList.get(j).getPdName());
    			product.setPd_nm(productEntityList.get(j).getPdNm());
    			product.setPd_introduce(productEntityList.get(j).getPdIntroduce());
    			product.setPd_img(productEntityList.get(j).getPdImg());
    			product.setPd_file(productEntityList.get(j).getPdFile());
    			product.setPd_mv(productEntityList.get(j).getPdMv());
    			product.setPd_title1(productEntityList.get(j).getPdTitle1());
    			product.setPd_intr1(productEntityList.get(j).getPdIntr1());
    			product.setPd_title2(productEntityList.get(j).getPdTitle2());
    			product.setPd_intr2(productEntityList.get(j).getPdIntr2());
    			product.setPd_title3(productEntityList.get(j).getPdTitle3());
    			product.setPd_intr3(productEntityList.get(j).getPdIntr3());
    			product.setPd_title4(productEntityList.get(j).getPdTitle4());
    			product.setPd_intr4(productEntityList.get(j).getPdIntr4());
    			product.setPd_title5(productEntityList.get(j).getPdTitle5());
    			product.setPd_intr5(productEntityList.get(j).getPdIntr5());
    			product.setPd_title6(productEntityList.get(j).getPdTitle6());
    			product.setPd_intr6(productEntityList.get(j).getPdIntr6());
    			
    			productList.add(product);
    		}
    		
    		ProductKind productKind = new ProductKind();
    		productKind.setProductList(productList);
    		productKind.setKd_name(productKindEntityList.get(i).getKdName());
    		productKind.setKd_nm(productKindEntityList.get(i).getKdNm());
    		
    		productKindList.add(productKind);
        }

        return productKindList;
    }
}
