package com.ebc.boot.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 在线留言消息
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
public class Feedback {

    private Integer order;
    private String username;
    private String title;
    private String email;
    private String state;
    private String textArea;
}
