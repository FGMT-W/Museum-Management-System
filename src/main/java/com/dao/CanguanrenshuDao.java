package com.dao;

import com.entity.CanguanrenshuEntity;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import java.util.List;
import java.util.Map;
import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.plugins.pagination.Pagination;

import org.apache.ibatis.annotations.Param;
import com.entity.vo.CanguanrenshuVO;
import com.entity.view.CanguanrenshuView;


/**
 * 参观人数
 * 
 * @author 
 * @email 
 * @date 2022-05-03 15:16:55
 */
public interface CanguanrenshuDao extends BaseMapper<CanguanrenshuEntity> {
	
	List<CanguanrenshuVO> selectListVO(@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);
	
	CanguanrenshuVO selectVO(@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);
	
	List<CanguanrenshuView> selectListView(@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);

	List<CanguanrenshuView> selectListView(Pagination page,@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);
	
	CanguanrenshuView selectView(@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);
	

    List<Map<String, Object>> selectValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);

    List<Map<String, Object>> selectTimeStatValue(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);

    List<Map<String, Object>> selectGroup(@Param("params") Map<String, Object> params,@Param("ew") Wrapper<CanguanrenshuEntity> wrapper);
}
