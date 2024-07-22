package com.entity.view;

import com.entity.ZhanlanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 展览信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
@TableName("zhanlanxinxi")
public class ZhanlanxinxiView  extends ZhanlanxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZhanlanxinxiView(){
	}
 
 	public ZhanlanxinxiView(ZhanlanxinxiEntity zhanlanxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, zhanlanxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
