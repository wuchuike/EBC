package com.ebc.boot.service;

import com.ebc.boot.entity.EbcUser;
import com.ebc.boot.json.LayUiTableJSON;

import javax.servlet.http.HttpServletRequest;

/**
 * @author k
 * Introduction :
 */


public interface EbcUserService {
    EbcUser selectByUsername(String username);

    boolean getAllUsers(String username);

    LayUiTableJSON getAllUsers();

    boolean toCheckLogin(String username, String password, HttpServletRequest request);

    int saveUsers(EbcUser ebcUser);

    /**
     * 将在线留言存入数据库
     * @param request 数据bean
     * @return 影响行数
     */
    int saveOnlineMessage(HttpServletRequest request);
}
