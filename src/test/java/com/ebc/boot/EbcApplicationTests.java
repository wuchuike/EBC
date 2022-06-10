package com.ebc.boot;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.ebc.boot.entity.EbcUser;
import com.ebc.boot.entity.NewestDynamic;
import com.ebc.boot.entity.SeparateBatch;
import com.ebc.boot.entity.Species;
import com.ebc.boot.mapper.EbcUserMapper;
import com.ebc.boot.mapper.NewestDynamicMapper;
import com.ebc.boot.mapper.SeparateBatchMapper;
import com.ebc.boot.mapper.SpeciesMapper;
import com.ebc.boot.service.EbcUserService;
import com.ebc.boot.service.NewestDynamicService;
import com.ebc.boot.utils.MD5Utils;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.sql.DataSource;
import java.io.*;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.List;

@SpringBootTest
class EbcApplicationTests {

    @Test
    void contextLoads() {
    }

    @Autowired
    private DataSource c3p0;
    @Test
    public void testC3p0() {
        System.out.println(c3p0);
    }

    @Autowired
    private EbcUserMapper ebcUserMapper;
    @Test
    public void testUserMapper() {
//        ebcUserMapper.selectList(null).forEach(System.out::println);
        EbcUser ebcUser = ebcUserMapper.selectByUsername("root");
        System.out.println(ebcUser);
    }

    // 分页测试
    @Test
    public void testPage(){
        //设置分页参数
        Page<EbcUser> page = new Page<>(1, 1);
        ebcUserMapper.selectPage(page, null);
        //获取分页数据
        List<EbcUser> list = page.getRecords();
        list.forEach(System.out::println);
        System.out.println("当前页："+page.getCurrent());
        System.out.println("每页显示的条数："+page.getSize());
        System.out.println("总记录数："+page.getTotal());
        System.out.println("总页数："+page.getPages());
        System.out.println("是否有上一页："+page.hasPrevious());
        System.out.println("是否有下一页："+page.hasNext());
    }

    @Test
    public void testGetAll() {
        List<EbcUser> list = ebcUserMapper.getAllUser();
        list.forEach(System.out::println);
    }


    @Test
    public void testMD5() throws NoSuchAlgorithmException {
        System.out.println(MD5Utils.getPasswdMd5("123123"));
        System.out.println(MD5Utils.getPasswdMd5("userOne"));
        System.out.println("CIHJS1D95J3FOGFF7LNQXG==".equals(MD5Utils.getPasswdMd5("123123")));
        // root?  -->the EBC manager
        // user?  -->userOne
    }

    @Autowired
    private EbcUserService ebcUserService;
    @Test
    public void testSave() {

    }


    @Autowired
    private SeparateBatchMapper batchMapper;
    @Test
    public void testSaveSe() {
//        SeparateBatch separateBatch = new SeparateBatch();
//        separateBatch.setBatchDate("2016_1_1_to_2016_5_31");
//        batchMapper.insert(separateBatch);
        List<SeparateBatch> separateBatch = batchMapper.getAllBatchDate();
        separateBatch.forEach(System.out::println);
    }



    @Autowired
    private SpeciesMapper speciesMapper;
    @Test
    public void testSpMapper() {
        List<Species> species;
        species = speciesMapper.getAllSpecies("species_2015_1_1_to_1015_5_31");
        System.out.println(species);
    }


    @Autowired
    private NewestDynamicService dynamicService;
    @Test
    public void testDynamicMapper() {
        dynamicService.getAllDynamic(null,1,5);
    }


    @Test
    public void getAll() {
        FileReader fr = null;
        try
        {
            //实例化对象
            fr = new FileReader("C:\\Users\\19473\\Desktop\\fi\\demo.txt");

            //优化过的读取方式：
            int ch = 0;
            int a = 0;
            while((ch=fr.read()) != -1)
            {

                if ((char)ch == ',') {
                    System.out.print((char)ch);
                    a += 1;
                }
            }
            System.out.println("‘,’的个数为："+a);
        }
        catch(IOException e)
        {
            sop("Error:"+e.getMessage());
        }
        finally
        {
            try
            {
                if(null!=fr) fr.close();
            }
            catch(IOException e)
            {
                sop("Error:"+e.getMessage());
            }
        }
    }

    public static void sop(Object obj)
    {
        System.out.println(obj);
    }

}
