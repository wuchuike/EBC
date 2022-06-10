package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 图片展示实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ShowImg {

    private Integer order;
    private String imgPath;
}
