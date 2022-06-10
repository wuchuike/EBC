package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import org.springframework.web.multipart.MultipartFile;

/**
 * @author k
 * Introduction : 每个文件对应一个MultipartFileParam实例
 */

@AllArgsConstructor
@NoArgsConstructor
@Data
@ToString
public class MultipartFileParam {

    private String uid;// 用户id
    private String id;// 任务id
    private Integer chunks;// 总分片数
    private Integer chunk; // 当前分片
    private String name;//文件名
    private Long size = 0L;
    private MultipartFile file;//分片对象
    private String md5;//前端产生的md5值
    private String batch;//所属批次

}
