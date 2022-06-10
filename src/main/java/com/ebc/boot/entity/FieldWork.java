package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 实验样本表实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class FieldWork {

    private String collectionDate;
    private String sampleId;
    private String speciesL;
    private String x;
    private String y;
    private String height;
    private String environment;
    private String relatedTrace;
    private String basal;
    private String degree;
    private String color;
    private String imageId;
    private String collector;
}
