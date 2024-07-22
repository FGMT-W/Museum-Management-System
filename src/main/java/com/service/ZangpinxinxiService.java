package com.service;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.service.IService;
import com.utils.PageUtils;
import com.entity.ZangpinxinxiEntity;
import java.util.List;
import java.util.Map;
import com.entity.vo.ZangpinxinxiVO;
import org.apache.ibatis.annotations.Param;
import com.entity.view.ZangpinxinxiView;


/**
 * 藏品信息
 *
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public interface ZangpinxinxiService extends IService<ZangpinxinxiEntity> {

    PageUtils queryPage(Map<String, Object> params);
    
   	List<ZangpinxinxiVO> selectListVO(Wrapper<ZangpinxinxiEntity> wrapper);
   	
   	ZangpinxinxiVO selectVO(@Param("ew") Wrapper<ZangpinxinxiEntity> wrapper);
   	
   	List<ZangpinxinxiView> selectListView(Wrapper<ZangpinxinxiEntity> wrapper);
   	
   	ZangpinxinxiView selectView(@Param("ew") Wrapper<ZangpinxinxiEntity> wrapper);
   	
   	PageUtils queryPage(Map<String, Object> params,Wrapper<ZangpinxinxiEntity> wrapper);
   	

}

