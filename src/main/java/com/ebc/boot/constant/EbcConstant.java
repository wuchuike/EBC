package com.ebc.boot.constant;


/**
 * @author k
 * Introduction : 常量类
 */

public class EbcConstant {

    //所有文件存储目录
    public static final String EBC_DIR = "D:\\EBC\\";

    //每一批次的文件存储目录，每一批中有图片视频以及各种表
    public static final String EBC_BATCH_PATH = "all_batch\\";

    //实验记录表存储路径
    public static final String EBC_LAB_RECORD_PATH = "lab_record\\";

    //kml文件存储路径
    public static final String EBC_KML_PATH = "kml\\";

    //环境数据信息存储路径
    public static final String EBC_EDI_PATH = "lab_record\\";

    //工作流程信息存储路径
    public static final String EBC_WORKFLOW_PATH = "lab_record\\";

    //工作流程信息存储路径
    public static final String EBC_TEST_ROW_DATA_PATH = "lab_record\\";

    //分片大小
    public static final Long CHUNK_SIZE = 5242880L;
}
