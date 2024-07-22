package com.dao;

import com.entity.ZangpinxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZangpinxinxiVO;
import com.entity.view.ZangpinxinxiView;


/**
 * 藏品信息
 * 
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public interface ZangpinxinxiDao extends BaseMapper<ZangpinxinxiEntity> {
	
	List<ZangpinxinxiVO> selectListVO(@Param("ew") Wrapper<ZangpinxinxiEntity> wrapper);
	
	ZangpinxinxiVO selectVO(@Param("ew") Wrapper<ZangpinxinxiEntity> wrapper);
	
	List<ZangpinxinxiView> selectListView(@Param("ew") Wrapper<ZangpinxinxiEntity> wrapper);

	List<ZangpinxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ZangpinxinxiEntity> wrapper);
	
	ZangpinxinxiView selectView(@Param("ew") Wrapper<ZangpinxinxiEntity> wrapper);
	

}
