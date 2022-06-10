package com.ebc.boot.entity;

import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

import java.util.Date;

/**
 * @author k
 * Introduction : 用户信息实体类
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
@ToString
@TableName("user")
public class EbcUser {
    //同名字段查询时可以不用再额外使用resultMap设置字段与属性对应关系
    @TableId
    private String username;    //用户名
    private String nickname;    //昵称（非必须，默认为username）
    private String password;    //密码
    private String email;   //邮箱（非必须）
    private String phone; // 电话（非必须）
    private String rDate; // 注册时间
    private String sp;  // 密保问题
    private String spa; //密保答案
    private String R;   // 管理员权限（权限标识为0则无权限，1为有权限）
    private String I;    //资料审核入库权限
    private String E;    //实验管理权限
    private String imgV; //影像管理权限（外业记录表的修改权限）
    private String W;  //工作流程管理权限

}
