package com.ebc.boot.controller;

import com.ebc.boot.constant.EbcConstant;
import com.ebc.boot.entity.MultipartFileParam;
import com.ebc.boot.json.CheckMD5JSON;
import com.ebc.boot.utils.FileMD5Util;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;


/**
 * @author k
 * Introduction :
 */

@Controller
public class SolveIndexDataController {

    // 上传
    @RequestMapping(value = {"upload"})
    public String solveUpload() {
        return "solve/upload";
    }


    // 上传文件夹
    @RequestMapping(value = {"uploadFolder"})
    public String solveUploadFolder() {
        return "solve/upload/uploadFolder";
    }
    @RequestMapping("upload/folder")
    @ResponseBody
    public void upload(MultipartFileParam param,HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("文件上传。。。。。。");
        String dir = "D:\\EBC\\upload\\";
        boolean isFileData = ServletFileUpload.isMultipartContent(request);
        System.out.println("分批信息："+param.getBatch());
        if (isFileData){
            String fileName = param.getName();
            String uploadDirPath = dir + param.getMd5();
            Integer currentChunk = param.getChunk();
            String tempFileName = currentChunk+"_"+fileName;
            File tmpDir = new File(uploadDirPath);
            File tmpFile = new File(uploadDirPath, tempFileName);
            System.out.println(tmpDir.mkdirs());
            RandomAccessFile tempRaf = new RandomAccessFile(tmpFile, "rw");
            FileChannel fileChannel = tempRaf.getChannel();
            //写入该分片数据
            long offset = EbcConstant.CHUNK_SIZE * param.getChunk();
            byte[] fileData = param.getFile().getBytes();
            MappedByteBuffer mappedByteBuffer =
                    fileChannel.map(FileChannel.MapMode.READ_WRITE, offset, fileData.length);
            mappedByteBuffer.put(fileData);
            // 释放
            FileMD5Util.freedMappedByteBuffer(mappedByteBuffer);
            fileChannel.close();
        }
        response.getWriter().write("上传成功");
    }

    // 进行md5判断
    @RequestMapping(value = "upload/checkFileMd5")
    @ResponseBody
    public CheckMD5JSON toCheckFileMd5(HttpServletRequest request) {
        System.out.println("正在进行md5判断。。。");
        String uid = request.getParameter("uid");
        String md5 = request.getParameter("md5");
        String filename = request.getParameter("filename");
        System.out.println("uid : " + uid);
        System.out.println("md5 : " + md5);
        System.out.println("filename : " + filename);

        CheckMD5JSON json = new CheckMD5JSON();
        json.setState(101);
        json.setCode(1);
        json.setDataReturn("DataReturn");
        json.setMessage("return message");

        String dir = "D:\\upload\\";
        String fileP = dir + filename + "_" + md5;
        System.out.println("fileP: "+fileP);
        File file = new File(fileP);
        if (file.exists()){
            //文件存在
            System.out.println("文件已存在");
        } else {
            System.out.println("文件不存在");
        }
        return json;
    }



    // 上传多文件
    @RequestMapping(value = {"uploadFiles"})
    public String solveUploadFiles() {
        return "solve/upload/uploadFiles";
    }
    @RequestMapping("upload/files")
    @ResponseBody
    public void uploadFiles(MultipartFileParam param, HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        System.out.println("多文件上传");
        response.getWriter().write("上传完成");
    }

    // 上传单文件
    @RequestMapping(value = {"uploadFile"})
    public String solveUploadFile() {
        return "solve/upload/uploadFile";
    }
    @RequestMapping("upload/file")
    @ResponseBody
    public void uploadFile(MultipartFileParam param, HttpServletRequest request, HttpServletResponse response)
            throws IOException {
        System.out.println("多文件上传");
        response.getWriter().write("上传完成");
    }
    // 上传实验
    @RequestMapping(value = {"uploadExperiment"})
    public String solveUploadExperiment() {
        return "solve/upload/uploadExperiment";
    }



    //下载
    @RequestMapping(value = {"download"})
    public String solveDownload() {
        return "solve/download";
    }



    //查找
    @RequestMapping(value = {"search"})
    public String solveSearch() {
        return "solve/search";
    }



    //数据生成
    @RequestMapping(value = {"generation"})
    public String solveGeneration() {
        return "solve/generation";
    }









}