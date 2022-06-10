package com.ebc.boot.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 照片和视频实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class ImgAndVideo {

    private Integer order;
    private String dataTime;
    private String detailLocation;
    private String projectInf;
    private String cameraId;
    private String path;
    private String username;
    private String status;

}
