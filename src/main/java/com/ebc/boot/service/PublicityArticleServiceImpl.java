package com.ebc.boot.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ebc.boot.entity.PublicityArticle;
import com.ebc.boot.json.LayUiTableJSON;
import com.ebc.boot.mapper.PublicityArticleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Service
public class PublicityArticleServiceImpl implements PublicityArticleService{

    @Autowired
    private PublicityArticleMapper articleMapper;

    @Override
    public void getAllArticles(HttpServletRequest request, Integer cup, Integer ps) {
        Page<PublicityArticle> page = new Page<>(cup,ps);
        QueryWrapper<PublicityArticle> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("declare_date");
        articleMapper.selectPage(page,queryWrapper);

        List<PublicityArticle> list = page.getRecords();
        Long next = page.getCurrent()+1;
        Long pre = page.getCurrent()-1;
        request.setAttribute("articleList",list);
        request.setAttribute("page",page);
        request.setAttribute("pageN",next);
        request.setAttribute("pagePre",pre);
        request.setAttribute("pages",page.getPages());
    }

    @Override
    public LayUiTableJSON getAllArticles() {
        List<PublicityArticle> list = articleMapper.selectList(null);
        return LayUiTableJSON.getJSON(list.size(),list);
    }
}
