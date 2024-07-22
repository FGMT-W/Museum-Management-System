package com.entity.model;

import com.entity.ZhanlanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 展览信息
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public class ZhanlanxinxiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 场馆类型
	 */
	
	private String changguanleixing;
		
	/**
	 * 场馆图片
	 */
	
	private String changguantupian;
		
	/**
	 * 场馆位置
	 */
	
	private String changguanweizhi;
		
	/**
	 * 营业时间
	 */
	
	private String yingyeshijian;
		
	/**
	 * 工作编号
	 */
	
	private String gongzuobianhao;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 场馆介绍
	 */
	
	private String changguanjieshao;
		
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
	 * 设置：场馆类型
	 */
	 
	public void setChangguanleixing(String changguanleixing) {
		this.changguanleixing = changguanleixing;
	}
	
	/**
	 * 获取：场馆类型
	 */
	public String getChangguanleixing() {
		return changguanleixing;
	}
				
	
	/**
	 * 设置：场馆图片
	 */
	 
	public void setChangguantupian(String changguantupian) {
		this.changguantupian = changguantupian;
	}
	
	/**
	 * 获取：场馆图片
	 */
	public String getChangguantupian() {
		return changguantupian;
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
	 * 设置：营业时间
	 */
	 
	public void setYingyeshijian(String yingyeshijian) {
		this.yingyeshijian = yingyeshijian;
	}
	
	/**
	 * 获取：营业时间
	 */
	public String getYingyeshijian() {
		return yingyeshijian;
	}
				
	
	/**
	 * 设置：工作编号
	 */
	 
	public void setGongzuobianhao(String gongzuobianhao) {
		this.gongzuobianhao = gongzuobianhao;
	}
	
	/**
	 * 获取：工作编号
	 */
	public String getGongzuobianhao() {
		return gongzuobianhao;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：场馆介绍
	 */
	 
	public void setChangguanjieshao(String changguanjieshao) {
		this.changguanjieshao = changguanjieshao;
	}
	
	/**
	 * 获取：场馆介绍
	 */
	public String getChangguanjieshao() {
		return changguanjieshao;
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
