package com.ebc.boot.json;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author k
 * Introduction :
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class CheckMD5JSON {

    private Integer code; // 文件的md5检测下标
    private String message;
    private Integer state;
    private Object dataReturn;

}
