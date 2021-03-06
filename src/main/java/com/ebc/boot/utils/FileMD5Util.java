package com.ebc.boot.utils;

import sun.misc.Cleaner;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.reflect.Method;
import java.math.BigInteger;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.AccessController;
import java.security.MessageDigest;
import java.security.PrivilegedAction;
import java.io.File;

/**
 * @author k
 * Introduction :
 */


public class FileMD5Util {

    public static String getFileMD5(File file) throws FileNotFoundException {
        String value = null;
        FileInputStream in = new FileInputStream(file);
        MappedByteBuffer byteBuffer = null;
        try {
            byteBuffer = in.getChannel().map(FileChannel.MapMode.READ_ONLY, 0, file.length());
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(byteBuffer);
            BigInteger bi = new BigInteger(1, md5.digest());
            value = bi.toString(16);
            if (value.length() < 32) {
                value = "0" + value;
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            try {
                in.getChannel().close();
                in.close();
            } catch (IOException e) {
                System.out.println("get file md5 error!!!");
            }
            if (null != byteBuffer) {
                freedMappedByteBuffer(byteBuffer);
            }
        }
        return value;
    }

    /**
     * 在MappedByteBuffer释放后再对它进行读操作的话就会引发jvm crash，在并发情况下很容易发生
     * 正在释放时另一个线程正开始读取，于是crash就发生了。所以为了系统稳定性释放前一般需要检 查是否还有线程在读或写
     *
     * @param mappedByteBuffer
     */
    public static void freedMappedByteBuffer(final MappedByteBuffer mappedByteBuffer) {
        try {
            if (mappedByteBuffer == null) {
                return;
            }

            mappedByteBuffer.force();
            AccessController.doPrivileged((PrivilegedAction<Object>) () -> {
                try {
                    Method getCleanerMethod = mappedByteBuffer.getClass().getMethod("cleaner", new Class[0]);
                    getCleanerMethod.setAccessible(true);
                    Cleaner cleaner = (Cleaner) getCleanerMethod.invoke(mappedByteBuffer,
                            new Object[0]);
                    cleaner.clean();
                } catch (Exception e) {
                    System.out.println("clean MappedByteBuffer error");
                }
                System.out.println("clean MappedByteBuffer completed");
                return null;
            });

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
