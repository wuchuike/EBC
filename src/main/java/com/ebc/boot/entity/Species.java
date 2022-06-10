package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

/**
 * @author k
 * Introduction : 物种分拣表
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Species {

    private String cameraId;
    private ProjectInf projectInf;
    private String subFile;
    private Date data;
    private String time;
    private String imageId;
    private String species;
    private Integer number;
    private String SLEvents;

}
