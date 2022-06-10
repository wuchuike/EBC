package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 学术成果实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Academic {

    private Integer orders;
    private String title;
    private String transform;
    private String dDate;
}
