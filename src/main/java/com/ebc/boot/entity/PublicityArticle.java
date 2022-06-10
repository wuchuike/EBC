package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 科普宣传文章实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class PublicityArticle {

    private Integer orders;
    private String imgPath;
    private String title;
    private String textArea;
    private String declareDate;
    private String views;
    private String transform;
}
