package com.ebc.boot.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 项目地与时间实体
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@TableName("project_inf")
public class ProjectInf {

    private Integer order;
    private String projectName;
    private String projectDate;

}
