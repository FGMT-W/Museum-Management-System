package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.GongzuorenyuanEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.GongzuorenyuanVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.GongzuorenyuanView;


/**
 * 工作人员
 *
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public interface GongzuorenyuanService extends IService<GongzuorenyuanEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<GongzuorenyuanVO> selectListVO(Wrapper<GongzuorenyuanEntity> wrapper);
   	
   	GongzuorenyuanVO selectVO(@Param("ew") Wrapper<GongzuorenyuanEntity> wrapper);
   	
   	List<GongzuorenyuanView> selectListView(Wrapper<GongzuorenyuanEntity> wrapper);
   	
   	GongzuorenyuanView selectView(@Param("ew") Wrapper<GongzuorenyuanEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<GongzuorenyuanEntity> wrapper);
   	

}

