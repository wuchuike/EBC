package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 样本采集信息实体
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class FSCF {

    private FRCommon common;
    private String sampleId;
    private String species;
    private String altitude;
    private String collectionDate;
    private String collectionTime;
    private String collector;
    private String weather;
    private String remarks;
    private String environment;
    private String relatedTrace;
    private String basal;
    private String degree;
    private String color;
}
