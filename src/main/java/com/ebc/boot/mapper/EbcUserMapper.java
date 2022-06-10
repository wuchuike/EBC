package com.ebc.boot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ebc.boot.entity.EbcUser;
import com.ebc.boot.entity.OnlineMessage;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Repository
public interface EbcUserMapper extends BaseMapper<EbcUser> {
    EbcUser selectByUsername(String username);

    List<String> getAllUsers();

    List<EbcUser> getAllUser();

    int saveOnlineMessage(OnlineMessage message);
}
