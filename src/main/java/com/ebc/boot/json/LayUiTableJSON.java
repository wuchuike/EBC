package com.ebc.boot.json;

import com.ebc.boot.entity.EbcUser;
import com.ebc.boot.entity.NewestDynamic;

import java.util.HashMap;
import java.util.List;

/**
 * @author k
 * Introduction : 将获取的数据转为能让layui table识别的数据
 */


public class LayUiTableJSON extends HashMap<String,Object> {

    public static LayUiTableJSON getJSON(Integer count, List users) {
        LayUiTableJSON json = new LayUiTableJSON();
        json.put("code",0);
        json.put("msg","");
        json.put("count",count);
        json.put("data",users);
        return json;
    }
}
