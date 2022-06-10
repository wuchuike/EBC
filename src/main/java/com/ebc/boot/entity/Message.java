package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 用户消息实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Message {

    private Integer order;
    private String fromUser;
    private String state;
    private String title;
    private String message;
}
