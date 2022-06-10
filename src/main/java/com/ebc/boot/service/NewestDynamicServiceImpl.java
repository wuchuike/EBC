package com.ebc.boot.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ebc.boot.entity.NewestDynamic;
import com.ebc.boot.json.LayUiTableJSON;
import com.ebc.boot.mapper.NewestDynamicMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Service
public class NewestDynamicServiceImpl implements NewestDynamicService{

    private final NewestDynamicMapper dynamicMapper;

    @Autowired
    public NewestDynamicServiceImpl(NewestDynamicMapper dynamicMapper) {
        this.dynamicMapper = dynamicMapper;
    }

    @Override
    public void getAllDynamic(HttpServletRequest request,Integer pc, Integer ps) {
        Page<NewestDynamic> page = new Page<>(pc,ps);

        QueryWrapper<NewestDynamic> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("d_date");

        List<NewestDynamic> list;
        dynamicMapper.selectPage(page,queryWrapper);
        list = page.getRecords();
        Long next = page.getCurrent()+1;
        Long pre = page.getCurrent()-1;
        request.setAttribute("dList",list);
        request.setAttribute("page",page);
        request.setAttribute("pageN",next);
        request.setAttribute("pagePre",pre);
        request.setAttribute("pages",page.getPages());
    }

    @Override
    public LayUiTableJSON getAllDynamic() {
        List<NewestDynamic> list = dynamicMapper.selectList(null);
        list.forEach(System.out::println);
        return LayUiTableJSON.getJSON(list.size(),list);
    }

    @Override
    public Integer selectByCondition(String colV,String type,HttpServletRequest request) {
        System.out.println("请求数据："+colV+" 数据类型："+type);
        QueryWrapper<NewestDynamic> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(type,colV);
        List<NewestDynamic> list = dynamicMapper.selectList(queryWrapper);
        request.setAttribute("list",list);
        return list.size();
    }
}
