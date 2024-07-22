package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.CanguanrenshuEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.CanguanrenshuVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.CanguanrenshuView;


/**
 * 参观人数
 *
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public interface CanguanrenshuService extends IService<CanguanrenshuEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<CanguanrenshuVO> selectListVO(Wrapper<CanguanrenshuEntity> wrapper);
   	
   	CanguanrenshuVO selectVO(@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);
   	
   	List<CanguanrenshuView> selectListView(Wrapper<CanguanrenshuEntity> wrapper);
   	
   	CanguanrenshuView selectView(@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<CanguanrenshuEntity> wrapper);
   	

    List<Map<String, Object>> selectValue(Map<String, Object> params,Wrapper<CanguanrenshuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params,Wrapper<CanguanrenshuEntity> wrapper);

    List<Map<String, Object>> selectGroup(Map<String, Object> params,Wrapper<CanguanrenshuEntity> wrapper);
}

