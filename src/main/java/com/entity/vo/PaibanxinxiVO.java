package com.entity.vo;

import com.entity.PaibanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.io.Serializable;
 

/**
 * 排班信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public class PaibanxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 姓名
	 */
	
	private String xingming;
		
	/**
	 * 排班图片
	 */
	
	private String paibantupian;
		
	/**
	 * 排班内容
	 */
	
	private String paibanneirong;
		
	/**
	 * 发布日期
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date faburiqi;
				
	
	/**
	 * 设置：姓名
	 */
	 
	public void setXingming(String xingming) {
		this.xingming = xingming;
	}
	
	/**
	 * 获取：姓名
	 */
	public String getXingming() {
		return xingming;
	}
				
	
	/**
	 * 设置：排班图片
	 */
	 
	public void setPaibantupian(String paibantupian) {
		this.paibantupian = paibantupian;
	}
	
	/**
	 * 获取：排班图片
	 */
	public String getPaibantupian() {
		return paibantupian;
	}
				
	
	/**
	 * 设置：排班内容
	 */
	 
	public void setPaibanneirong(String paibanneirong) {
		this.paibanneirong = paibanneirong;
	}
	
	/**
	 * 获取：排班内容
	 */
	public String getPaibanneirong() {
		return paibanneirong;
	}
				
	
	/**
	 * 设置：发布日期
	 */
	 
	public void setFaburiqi(Date faburiqi) {
		this.faburiqi = faburiqi;
	}
	
	/**
	 * 获取：发布日期
	 */
	public Date getFaburiqi() {
		return faburiqi;
	}
			
}
