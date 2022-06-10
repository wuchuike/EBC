package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : kml文件实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class KML {

    private Integer order;
    private String path;
    private String projectName;
    private String projectStartDate;
    private String projectEnDate;

}
