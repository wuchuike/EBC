package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 环境数据信息实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class EnvironmentalDataInformation {

    private Integer order;
    private String dataType;
    private String download;
    private String path;
}
