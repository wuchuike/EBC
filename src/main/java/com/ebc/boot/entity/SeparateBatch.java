package com.ebc.boot.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 批次信息实体
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@TableName("separate_batch")
public class SeparateBatch {

    private Integer orders;
    //批次开始时间及结束时间
    private String batchDate;
    //本批次对应的照片和视频表的表名表名
    private String IVTableName;
    //图片与视频对应的物种分拣表表名
    private String speciesTName;
    //批次名
    private String batchName;

}
