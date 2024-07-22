package com.entity.model;

import com.entity.CanguanrenshuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 参观人数
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public class CanguanrenshuModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 场馆类型
	 */
	
	private String changguanleixing;
		
	/**
	 * 图片
	 */
	
	private String tupian;
		
	/**
	 * 场馆位置
	 */
	
	private String changguanweizhi;
		
	/**
	 * 工作编号
	 */
	
	private String gongzuobianhao;
		
	/**
	 * 展览人数
	 */
	
	private Integer zhanlanrenshu;
		
	/**
	 * 登记日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date dengjiriqi;
		
	/**
	 * 内容说明
	 */
	
	private String neirongshuoming;
				
	
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
	 * 设置：图片
	 */
	 
	public void setTupian(String tupian) {
		this.tupian = tupian;
	}
	
	/**
	 * 获取：图片
	 */
	public String getTupian() {
		return tupian;
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
	 * 设置：展览人数
	 */
	 
	public void setZhanlanrenshu(Integer zhanlanrenshu) {
		this.zhanlanrenshu = zhanlanrenshu;
	}
	
	/**
	 * 获取：展览人数
	 */
	public Integer getZhanlanrenshu() {
		return zhanlanrenshu;
	}
				
	
	/**
	 * 设置：登记日期
	 */
	 
	public void setDengjiriqi(Date dengjiriqi) {
		this.dengjiriqi = dengjiriqi;
	}
	
	/**
	 * 获取：登记日期
	 */
	public Date getDengjiriqi() {
		return dengjiriqi;
	}
				
	
	/**
	 * 设置：内容说明
	 */
	 
	public void setNeirongshuoming(String neirongshuoming) {
		this.neirongshuoming = neirongshuoming;
	}
	
	/**
	 * 获取：内容说明
	 */
	public String getNeirongshuoming() {
		return neirongshuoming;
	}
			
}
