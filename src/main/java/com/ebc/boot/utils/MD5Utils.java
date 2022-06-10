package com.ebc.boot.utils;

import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

/**
 * @author k
 * Introduction :
 */


public class MD5Utils {

    // 撒盐原料
    private static final String EBCOne = "EbcPasswdAddToMD5One";
    private static final String EBCTwo = "EbcPasswdAddToMD5Two";
    private static final String EBCTh = "EbcPasswdAddToMD5Three";

    public static String getPasswdMd5(String password) throws NoSuchAlgorithmException {
        // 声明字符的加密方法为MD5
        MessageDigest md5 = MessageDigest.getInstance("MD5");
        Base64.Encoder encoder = Base64.getEncoder();
        StringBuilder passwordBuilder = new StringBuilder(password);
        for (int i = 0; i < 3; i++) {
            if (i == 0) {
                passwordBuilder.append(EBCOne);
            } else if (i == 1) {
                passwordBuilder.append(EBCTwo);
            } else {
                passwordBuilder.append(EBCTh);
            }
            // 加密
            passwordBuilder = new StringBuilder(encoder.encodeToString
                    (md5.digest(passwordBuilder.toString().getBytes(StandardCharsets.UTF_8))));
        }
        return passwordBuilder.toString().toUpperCase();
    }
}
