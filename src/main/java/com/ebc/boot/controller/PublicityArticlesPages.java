package com.ebc.boot.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author k
 * Introduction : 用于处理科普宣传文章的跳转
 */

@Controller
@RequestMapping("articles")
public class PublicityArticlesPages {

    @RequestMapping("/page1")
    public String toPage_1() {
        return "nav/publicity_articles_page1";
    }
    @RequestMapping("/page2")
    public String toPage_2() {
        return "nav/publicity_articles_page2";
    }
    @RequestMapping("/page3")
    public String toPage_3() {
        return "nav/publicity_articles_page3";
    }
    @RequestMapping("/page4")
    public String toPage_4() {
        return "nav/publicity_articles_page4";
    }
    @RequestMapping("/page5")
    public String toPage_5() {
        return "nav/publicity_articles_page5";
    }
    @RequestMapping("/page6")
    public String toPage_6() {
        return "nav/publicity_articles_page6";
    }
    @RequestMapping("/page7")
    public String toPage_7() {
        return "nav/publicity_articles_page7";
    }
}
