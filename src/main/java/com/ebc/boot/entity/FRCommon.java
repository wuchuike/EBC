package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 外业记录表子表交集实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class FRCommon {

    private Integer order;
    private String province;
    private String location;
    private String town;
    private String village;
    private String protectionZone;
    private String gridNumber;
    private String alias;
    private String n;
    private String e;
}
