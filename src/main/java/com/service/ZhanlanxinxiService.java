package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZhanlanxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZhanlanxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZhanlanxinxiView;


/**
 * 展览信息
 *
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public interface ZhanlanxinxiService extends IService<ZhanlanxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZhanlanxinxiVO> selectListVO(Wrapper<ZhanlanxinxiEntity> wrapper);
   	
   	ZhanlanxinxiVO selectVO(@Param("ew") Wrapper<ZhanlanxinxiEntity> wrapper);
   	
   	List<ZhanlanxinxiView> selectListView(Wrapper<ZhanlanxinxiEntity> wrapper);
   	
   	ZhanlanxinxiView selectView(@Param("ew") Wrapper<ZhanlanxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZhanlanxinxiEntity> wrapper);
   	

}

