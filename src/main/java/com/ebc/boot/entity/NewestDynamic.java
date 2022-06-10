package com.ebc.boot.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

/**
 * @author k
 * Introduction : 最新动态实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@TableName("newest_dynamic")
public class NewestDynamic {

    private Integer orders;
    private String imgPath;
    private String title;
    private String textArea;
    private String transform;
    private Date dDate;

}
