package com.ebc.boot.service;

import com.ebc.boot.json.LayUiTableJSON;

import javax.servlet.http.HttpServletRequest;

/**
 * @author k
 * Introduction :
 */


public interface AcademicService {

    void getAllAcademic(HttpServletRequest request,Integer cup, Integer ps);

    LayUiTableJSON getAllAcademic();

}
