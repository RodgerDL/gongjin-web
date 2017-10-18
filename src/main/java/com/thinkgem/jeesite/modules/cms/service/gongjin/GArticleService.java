/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.cms.service.gongjin;

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

/**
 * 文章Service
 * @author ThinkGem
 * @version 2013-05-15
 */
@Service
@Transactional(readOnly = true)
public class GArticleService extends CrudService<ArticleDao, Article> {

    @Autowired
    private ArticleDao articleDao;
    @Autowired
    private ArticleDataDao articleDataDao;
    @Autowired
    private CategoryDao categoryDao;

    /**
     * 获取内容列表
     * @return new page
     */
    @Transactional(readOnly = false)
    public Page<Article> findPage(Page<Article> page, Article article, boolean isDataScopeFilter) {

        if (article.getCategory() != null && StringUtils.isNotBlank(article.getCategory().getId()) && !Category.isRoot(article.getCategory().getId())){
            Category category = categoryDao.get(article.getCategory().getId());
            if (category==null){
                category = new Category();
            }
            category.setParentIds(category.getId());
            category.setSite(category.getSite());
            article.setCategory(category);
        }
        else{
            article.setCategory(new Category());
        }

        return super.findPage(page, article);
    }

    /**
     * 获取内容
     * @return new article
     */
    @Transactional(readOnly = false)
    public Article getArticle(Article article) {

        return articleDao.getArticle(article);
    }

}
