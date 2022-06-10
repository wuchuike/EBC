package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 外业记录表的痕迹样线数据实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class TSLQ {

    private FRCommon common;
    private String surveyDate;
    private String startN;
    private String startE;
    private String startHeight;
    private String startTime;
    private String endN;
    private String endE;
    private String endHeight;
    private String endTime;
    private String observeTime;
    private String height;
    private String specie;
    private String maleNumber;
    private String femaleNumber;
    private String larvaNumber;
    private String total;
    private String footprint;
    private String scrape;
    private String feces;
    private String nest;
    private String other;
    private String verticalDistance;
    private String environment;
    private String weather;
    private String investigator;
    private String remarks;
}
