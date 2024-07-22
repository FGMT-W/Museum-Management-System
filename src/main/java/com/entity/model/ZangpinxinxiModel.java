package com.entity.model;

import com.entity.ZangpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 藏品信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public class ZangpinxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 藏品类别
	 */
	
	private String zangpinleibie;
		
	/**
	 * 藏品图片
	 */
	
	private String zangpintupian;
		
	/**
	 * 藏品年代
	 */
	
	private String zangpinniandai;
		
	/**
	 * 有关历史
	 */
	
	private String youguanlishi;
		
	/**
	 * 场馆名称
	 */
	
	private String changguanmingcheng;
		
	/**
	 * 场馆位置
	 */
	
	private String changguanweizhi;
		
	/**
	 * 藏品简介
	 */
	
	private String zangpinjianjie;
		
	/**
	 * 藏品详情
	 */
	
	private String zangpinxiangqing;
		
	/**
	 * 最近点击时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date clicktime;
		
	/**
	 * 点击次数
	 */
	
	private Integer clicknum;
				
	
	/**
	 * 设置：藏品类别
	 */
	 
	public void setZangpinleibie(String zangpinleibie) {
		this.zangpinleibie = zangpinleibie;
	}
	
	/**
	 * 获取：藏品类别
	 */
	public String getZangpinleibie() {
		return zangpinleibie;
	}
				
	
	/**
	 * 设置：藏品图片
	 */
	 
	public void setZangpintupian(String zangpintupian) {
		this.zangpintupian = zangpintupian;
	}
	
	/**
	 * 获取：藏品图片
	 */
	public String getZangpintupian() {
		return zangpintupian;
	}
				
	
	/**
	 * 设置：藏品年代
	 */
	 
	public void setZangpinniandai(String zangpinniandai) {
		this.zangpinniandai = zangpinniandai;
	}
	
	/**
	 * 获取：藏品年代
	 */
	public String getZangpinniandai() {
		return zangpinniandai;
	}
				
	
	/**
	 * 设置：有关历史
	 */
	 
	public void setYouguanlishi(String youguanlishi) {
		this.youguanlishi = youguanlishi;
	}
	
	/**
	 * 获取：有关历史
	 */
	public String getYouguanlishi() {
		return youguanlishi;
	}
				
	
	/**
	 * 设置：场馆名称
	 */
	 
	public void setChangguanmingcheng(String changguanmingcheng) {
		this.changguanmingcheng = changguanmingcheng;
	}
	
	/**
	 * 获取：场馆名称
	 */
	public String getChangguanmingcheng() {
		return changguanmingcheng;
	}
				
	
	/**
	 * 设置：场馆位置
	 */
	 
	public void setChangguanweizhi(String changguanweizhi) {
		this.changguanweizhi = changguanweizhi;
	}
	
	/**
	 * 获取：场馆位置
	 */
	public String getChangguanweizhi() {
		return changguanweizhi;
	}
				
	
	/**
	 * 设置：藏品简介
	 */
	 
	public void setZangpinjianjie(String zangpinjianjie) {
		this.zangpinjianjie = zangpinjianjie;
	}
	
	/**
	 * 获取：藏品简介
	 */
	public String getZangpinjianjie() {
		return zangpinjianjie;
	}
				
	
	/**
	 * 设置：藏品详情
	 */
	 
	public void setZangpinxiangqing(String zangpinxiangqing) {
		this.zangpinxiangqing = zangpinxiangqing;
	}
	
	/**
	 * 获取：藏品详情
	 */
	public String getZangpinxiangqing() {
		return zangpinxiangqing;
	}
				
	
	/**
	 * 设置：最近点击时间
	 */
	 
	public void setClicktime(Date clicktime) {
		this.clicktime = clicktime;
	}
	
	/**
	 * 获取：最近点击时间
	 */
	public Date getClicktime() {
		return clicktime;
	}
				
	
	/**
	 * 设置：点击次数
	 */
	 
	public void setClicknum(Integer clicknum) {
		this.clicknum = clicknum;
	}
	
	/**
	 * 获取：点击次数
	 */
	public Integer getClicknum() {
		return clicknum;
	}
			
}
