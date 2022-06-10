package com.ebc.boot.service;

import com.ebc.boot.json.LayUiTableJSON;

import javax.servlet.http.HttpServletRequest;

/**
 * @author k
 * Introduction :
 */


public interface NewestDynamicService {

    void getAllDynamic(HttpServletRequest request,Integer pc, Integer ps);

    LayUiTableJSON getAllDynamic();

    Integer selectByCondition(String colV,String type, HttpServletRequest request);
}
