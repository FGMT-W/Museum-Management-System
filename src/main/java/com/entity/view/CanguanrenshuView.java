package com.entity.view;

import com.entity.CanguanrenshuEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import org.apache.commons.beanutils.BeanUtils;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
 

/**
 * 参观人数
 * 后端返回视图实体辅助类   
 * （通常后端关联的表或者自定义的字段需要返回使用）
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
@TableName("canguanrenshu")
public class CanguanrenshuView  extends CanguanrenshuEntity implements Serializable {
	private static final long serialVersionUID = 1L;

	public CanguanrenshuView(){
	}
 
 	public CanguanrenshuView(CanguanrenshuEntity canguanrenshuEntity){
 	try {
			BeanUtils.copyProperties(this, canguanrenshuEntity);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 		
	}
}
