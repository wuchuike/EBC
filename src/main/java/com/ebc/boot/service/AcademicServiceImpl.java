package com.ebc.boot.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ebc.boot.entity.Academic;
import com.ebc.boot.json.LayUiTableJSON;
import com.ebc.boot.mapper.AcademicMapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Service
public class AcademicServiceImpl implements AcademicService{

    @Autowired
    private AcademicMapper academicMapper;

    @Override
    public void getAllAcademic(HttpServletRequest request, Integer cup, Integer ps) {
        Page<Academic> page = new Page<>(cup,ps);
        QueryWrapper<Academic> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("orders");

        academicMapper.selectPage(page,queryWrapper);
        List<Academic> list = page.getRecords();
        Long next = page.getCurrent()+1;
        Long pre = page.getCurrent()-1;
        request.setAttribute("aList",list);
        request.setAttribute("page",page);
        request.setAttribute("pageN",next);
        request.setAttribute("pagePre",pre);
        request.setAttribute("pages",page.getPages());
    }

    @Override
    public LayUiTableJSON getAllAcademic() {
        List<Academic> list = academicMapper.selectList(null);
        return LayUiTableJSON.getJSON(list.size(),list);
    }
}
