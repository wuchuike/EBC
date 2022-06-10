package com.ebc.boot.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 外业记录表
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@TableName("FR")
public class FR {

    private Integer order;
    private String projectInf;
    private String username;
    private String path;

}
