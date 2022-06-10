package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 野生动物影像实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class WildlifeImg {

    private Integer orders;
    private String title;
    private String textArea;
    private String videoPath;
    private String poster;

}
