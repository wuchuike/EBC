package com.ebc.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author k
 * Introduction : 用户后台管理
 */

@Controller
@RequestMapping("/nav")
public class BackstageController {

    @RequestMapping("/backstage")
    public String toBackstage() {
        return "/nav/backstage";
    }

    @RequestMapping("/backstage/manager/users")
    public String toManagerUsers() {
        return "/nav/backstage/managerEBCUsers";
    }

    @RequestMapping("/backstage/dynamicManagement")
    public String toDynamicManagement() {
        return "/nav/backstage/dynamicManagement";
    }

    @RequestMapping("/backstage/Academic")
    public String toAcademic() {
        return "/nav/backstage/AcademicManagement";
    }

    @RequestMapping("/backstage/publicityArticle")
    public String toPublicityArticle() {
        return "/nav/backstage/PublicityArticle";
    }

    @RequestMapping("/backstage/wildlifeImg")
    public String toWildlifeImg() {
        return "/nav/backstage/wildlifeImg";
    }

    @RequestMapping("/backstage/separateBatch")
    public String toSeparateBatch() {
        return "/nav/backstage/SeparateBatch";
    }
}
