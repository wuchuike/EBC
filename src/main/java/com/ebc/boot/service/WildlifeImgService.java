package com.ebc.boot.service;

import com.ebc.boot.json.LayUiTableJSON;

import javax.servlet.http.HttpServletRequest;

/**
 * @author k
 * Introduction :
 */


public interface WildlifeImgService {

    void getAllWI(HttpServletRequest request, Integer cup, Integer ps);

    LayUiTableJSON getAllWI();
}
