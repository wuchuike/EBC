package com.ebc.boot.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

/**
 * @author k
 * Introduction : 在线留言实体
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@TableName("feedback")
public class OnlineMessage {

    private String username;
    private String title;
    private String email;
    private String state;
    private String textArea;
}
