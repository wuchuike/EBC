package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 实验记录表实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ExperimentRecord {

    private Integer order;
    private String sampleId;
    private String labId;
    private String extractionDate;
    private String species;
    private String sex;
    private String individualId;

}
