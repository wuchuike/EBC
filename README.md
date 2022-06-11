# EBC项目介绍（持续更新）

一、这个项目是什么，做的内容是什么？  
本项目是设计并实现一个Web数据管理网站，根据需求设计数据库与相关页面。  

二、项目技术版本。  
  jdk：8；  
  maven：apache-maven-3.5.4；  
  bootstrap：3.4.1；  
  mysql：8.0.25；  
  更多版本信息请移步pom.xml。  
  
三、数据库表设计：  
  ①	用户表，存放用户的信息（user）。  
  ②	所有用户的消息表（user_message）。  
  ③	表的批次映射（separate_batch），说明哪个表属于哪个批次。  
  ④	图片和视频存储表（img_and_video_[no]）,no为批次。  
  ⑤	外业记录表（fr），只有一张，因为每个项目地才有一个外业记录表。  
  ⑥	物种分拣表（species_[no]）。  
  ⑦	个体识别表（distinguish_[no]）。  
  ⑧	实验记录表（experiment_record）。  
  ⑨	样本采集信息表（field_work）。  
  ⑩	测序原始数据表（sequencing_raw）。  
  ⑪	环境数据信息表（environmental_data_information）。  
  ⑫	kml文件存储表（kml）。  
  ⑬	物种名录表（species_record）。  
  ⑭	工作流程说明文档表（workflow）。  
  ⑮	最新动态表（newest_dynamic）。  
  ⑯	学术成果表（academic）。  
  ⑰	科普宣传文章表（publicity_article）  
  ⑱	野生动物影像表（wildlife_img）。  
  ⑲	用于展示的图片表（show_img）。  
  ⑳	在线留言表（feedback）。  
  21	项目批次信息（地点时间划分表）（project_inf）。  

