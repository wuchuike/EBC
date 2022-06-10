package com.ebc.boot.utils;

import java.io.*;

/**
 * @author k
 * Introduction :
 */


public class FileUtil {

    public static boolean isDir(String dirPath) {
        File f = new File(dirPath);
        return f.exists() && f.isDirectory();
    }

    /**
     * 创建多级目录
     * @param path
     */
    public static void makeDirs(String path) {
        File file = new File(path);
        // 如果文件夹不存在则创建
        if (!file.exists() && !file.isDirectory()) {
            file.mkdirs();
        }else {
            System.out.println("创建目录失败："+path);
        }
    }
}
