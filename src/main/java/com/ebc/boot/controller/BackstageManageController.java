package com.ebc.boot.controller;

import com.ebc.boot.json.LayUiTableJSON;
import com.ebc.boot.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

/**
 * @author k
 * Introduction :
 */

@Controller
@RequestMapping("/backstage")
public class BackstageManageController {

    @Autowired
    private EbcUserService userService;
    @Autowired
    private NewestDynamicService dynamicService;
    @Autowired
    private AcademicService academicService;
    @Autowired
    private PublicityArticleService articleService;
    @Autowired
    private WildlifeImgService wildlifeImgService;

    @RequestMapping("/getUsers")
    @ResponseBody
    public LayUiTableJSON getAllUsers() {
        return userService.getAllUsers();
    }

    @RequestMapping("/getDynamic")
    @ResponseBody
    public LayUiTableJSON getAllDynamic() {
        return dynamicService.getAllDynamic();
    }

    @RequestMapping("/getTitleLike")
    @ResponseBody
    public Integer getTitleByCondition(String operate,String type,HttpServletRequest request) {
        return dynamicService.selectByCondition(operate,type,request);
    }

    @RequestMapping("/getAcademic")
    @ResponseBody
    public LayUiTableJSON getAcademic() {
        return academicService.getAllAcademic();
    }

    @RequestMapping("/getPublicityArticle")
    @ResponseBody
    public LayUiTableJSON getPublicityArticle() {
        return articleService.getAllArticles();
    }

    @RequestMapping("/getWildlifeImg")
    @ResponseBody
    public LayUiTableJSON getWildlifeImg() {
        return wildlifeImgService.getAllWI();
    }

}
