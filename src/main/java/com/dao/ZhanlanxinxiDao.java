package com.dao;

import com.entity.ZhanlanxinxiEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.ZhanlanxinxiVO;
import com.entity.view.ZhanlanxinxiView;


/**
 * 展览信息
 * 
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public interface ZhanlanxinxiDao extends BaseMapper<ZhanlanxinxiEntity> {
	
	List<ZhanlanxinxiVO> selectListVO(@Param("ew") Wrapper<ZhanlanxinxiEntity> wrapper);
	
	ZhanlanxinxiVO selectVO(@Param("ew") Wrapper<ZhanlanxinxiEntity> wrapper);
	
	List<ZhanlanxinxiView> selectListView(@Param("ew") Wrapper<ZhanlanxinxiEntity> wrapper);

	List<ZhanlanxinxiView> selectListView(Pagination page,@Param("ew") Wrapper<ZhanlanxinxiEntity> wrapper);
	
	ZhanlanxinxiView selectView(@Param("ew") Wrapper<ZhanlanxinxiEntity> wrapper);
	

}
