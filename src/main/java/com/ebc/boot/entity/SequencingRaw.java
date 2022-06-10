package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 测序原始数据实体
 */


@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class SequencingRaw {

    private String fieldSample;
    private String amplifiedSequence;
    private String sequenceAttach;
    private String path;
}
