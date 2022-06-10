package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 工作流程实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Workflow {

    private Integer order;
    private String pathSpeciesSorting;
    private String pathIndividualIdentification;
    private String pathDensity;
}
