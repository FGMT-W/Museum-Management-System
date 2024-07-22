package com.entity.view;

import com.entity.ZangpinxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 藏品信息
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
@TableName("zangpinxinxi")
public class ZangpinxinxiView  extends ZangpinxinxiEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public ZangpinxinxiView(){
	}
 
 	public ZangpinxinxiView(ZangpinxinxiEntity zangpinxinxiEntity){
 	try {
			BeanUtils.copyProperties(this, zangpinxinxiEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
