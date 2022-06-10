package com.ebc.boot.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.ebc.boot.entity.SeparateBatch;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @author k
 * Introduction :
 */

@Repository
public interface SeparateBatchMapper extends BaseMapper<SeparateBatch> {

    /**
     * 获取批次时间列
     * @return 返回一个实体对象集合
     */
    List<SeparateBatch> getAllBatchDate();
}
