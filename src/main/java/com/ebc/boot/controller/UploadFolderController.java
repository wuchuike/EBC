package com.ebc.boot.controller;

import com.ebc.boot.entity.SeparateBatch;
import com.ebc.boot.mapper.SeparateBatchMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author k
 * Introduction :
 */

@Controller
public class UploadFolderController {

    @Autowired
    private SeparateBatchMapper batchMapper;

    @RequestMapping("upload/folder/show/batches")
    @ResponseBody
    public Map<Integer,String> getSelectBatches() {
        System.out.println("获取批次信息：");
        Map<Integer,String> map = new HashMap<>();
        List<SeparateBatch> separateBatches = batchMapper.getAllBatchDate();
        for (SeparateBatch separateBatch : separateBatches) {
            map.put(separateBatch.getOrders(),separateBatch.getBatchName());
            System.out.println(separateBatch.getBatchName());
            System.out.println(separateBatch.getOrders());
        }
        return map;
    }

}
