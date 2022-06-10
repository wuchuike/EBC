package com.ebc.boot.controller;


import com.ebc.boot.entity.NewestDynamic;
import com.ebc.boot.mapper.NewestDynamicMapper;
import com.ebc.boot.service.*;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

import static com.google.code.kaptcha.Constants.KAPTCHA_SESSION_KEY;


/**
 * @author k
 * Introduction :
 */

@Controller
@RequestMapping("nav")
public class NavController {

    @Autowired
    private EbcUserService ebcUserService;
    @Autowired
    private NewestDynamicService dynamicService;
    @Autowired
    private AcademicService academicService;
    @Autowired
    private PublicityArticleService articleService;
    @Autowired
    private WildlifeImgService imgService;

    // 中心介绍
    @RequestMapping(value = {"/introduce"})
    public String toIntroduce() {
        return "nav/introduce";
    }

    // 团队介绍
    @RequestMapping(value = {"/team"})
    public String toTeam() {
        return "nav/team";
    }

    // 雪豹保护项目
    @RequestMapping(value = {"/protectSnowLeopard"})
    public String toProtectSnowLeopard() {
        return "nav/protect_SnowLeopard";
    }

    // 亚洲象保护项目
    @RequestMapping(value = {"/protectAsianElephant"})
    public String toProtectAsianElephant() {
        return "nav/protect_AsianElephant";
    }

    // 公共参与和社区保护
    @RequestMapping(value = {"/protectPublicJoin"})
    public String toProtectPublicJoin() {
        return "nav/protect_PublicJoin";
    }

    // 最新动态
    @RequestMapping(value = {"/publicityNewestDynamic"})
    public String toPublicityNewestDynamic(HttpServletRequest request,
                                           @Param("pc")Integer pc, @Param("ps")Integer ps) {
        dynamicService.getAllDynamic(request,pc,ps);
        return "nav/publicity_NewestDynamic";
    }

    // 学术成果
    @RequestMapping(value = {"/publicityAcademicAchievements"})
    public String toPublicityAcademicAchievements(HttpServletRequest request,
                                                  @Param("cup")Integer cup, @Param("ps")Integer ps) {
        academicService.getAllAcademic(request,cup,ps);
        return "nav/publicity_AcademicAchievements";
    }

    // 科普宣传文章
    @RequestMapping(value = {"/publicityArticles"})
    public String toPublicityArticles(HttpServletRequest request,
                                      @Param("cup")Integer cup, @Param("ps")Integer ps) {
        articleService.getAllArticles(request,cup,ps);
        return "nav/publicity_Articles";
    }

    // 野生动物影像
    @RequestMapping(value = {"/publicityWildlifeImage"})
    public String toPublicityWildlifeImage(HttpServletRequest request,
                                           @Param("cup")Integer cup, @Param("ps")Integer ps) {
        imgService.getAllWI(request,cup,ps);
        return "nav/publicity_WildlifeImage";
    }

    // 全职招聘（跳转微信界面，保留弃用）
    @RequestMapping(value = {"/joinFullTimeRecruitment"})
    public String toJoinFullTimeRecruitment() {
        return "nav/join_FullTimeRecruitment";
    }

    // 志愿者招聘
    @RequestMapping(value = {"/joinVolunteerRecruitment"})
    public String toJoinVolunteerRecruitment() {
        return "nav/join_VolunteerRecruitment";
    }

    // 退出登录
    @RequestMapping(value = {"/logout"})
    public String toLogout() {
        return "/nav/logout";
    }

    // 个人资料
    @RequestMapping(value = {"/myData"})
    public String toMyData() {
        return "/nav/my_data";
    }

    // 个人资料
    @RequestMapping(value = {"/message"})
    public String toMyMessage() {
        return "/nav/message";
    }

    // 我的上传
    @RequestMapping(value = {"/myUpload"})
    public String toMyUpload() {
        return "/nav/my_upload";
    }

    // 权限申请
    @RequestMapping(value = {"/myApply"})
    public String toMyApply() {
        return "/nav/my_apply";
    }

    // 用户管理
    @RequestMapping(value = {"/managerUsers"})
    public String toManagerUsers() {
        return "/nav/backstage";
    }


    //在线留言
    @RequestMapping(value = {"/onlineMessage"})
    public void toOnlineMessage(HttpServletRequest request, HttpServletResponse response) throws IOException {
        System.out.println("有新的留言");
        HttpSession session = request.getSession();
        String captcha = (String) session.getAttribute(KAPTCHA_SESSION_KEY);
        session.removeAttribute(KAPTCHA_SESSION_KEY);

        String code = request.getParameter("code");

        if (!code.equalsIgnoreCase(captcha)) {
            response.getWriter().write("false");
            return;
        }

        ebcUserService.saveOnlineMessage(request);
        response.getWriter().write("true");
    }
}
