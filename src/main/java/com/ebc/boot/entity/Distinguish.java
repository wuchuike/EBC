package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 个体识别表实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Distinguish {

    private Integer order;
    private String path;
    private ProjectInf projectInf;
}
