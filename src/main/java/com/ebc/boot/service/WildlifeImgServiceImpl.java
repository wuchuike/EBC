package com.ebc.boot.service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ebc.boot.entity.WildlifeImg;
import com.ebc.boot.json.LayUiTableJSON;
import com.ebc.boot.mapper.WildlifeImgMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Service
public class WildlifeImgServiceImpl implements WildlifeImgService{

    @Autowired
    private WildlifeImgMapper imgMapper;

    @Override
    public void getAllWI(HttpServletRequest request, Integer cup, Integer ps) {
        Page<WildlifeImg> page = new Page<>(cup,ps);
        QueryWrapper<WildlifeImg> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("orders");
        imgMapper.selectPage(page,queryWrapper);
        List<WildlifeImg> list = page.getRecords();

        int i = 1;
        for (WildlifeImg img:list) {
            if (img.getTextArea().contains("|")) {
                String p = "p_";
                String[] s = img.getTextArea().split("\\|");
                p += Integer.toString(i);
                List<String> lp = new ArrayList<>(Arrays.asList(s));
                request.setAttribute(img.getOrders().toString(),lp);
                img.setTextArea("Paragraphs");
            }
            i++;
        }

        Long next = page.getCurrent()+1;
        Long pre = page.getCurrent()-1;
        request.setAttribute("imgList",list);
        request.setAttribute("page",page);
        request.setAttribute("pageN",next);
        request.setAttribute("pagePre",pre);
        request.setAttribute("pages",page.getPages());
    }

    @Override
    public LayUiTableJSON getAllWI() {
        List<WildlifeImg> list = imgMapper.selectList(null);
        return LayUiTableJSON.getJSON(list.size(),list);
    }
}
