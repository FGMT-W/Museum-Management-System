package com.service.impl;

import org.springframework.stereotype.Service;
import java.util.Map;
import java.util.List;

import com.baomidou.mybatisplus.mapper.Wrapper;
import com.baomidou.mybatisplus.mapper.EntityWrapper;
import com.baomidou.mybatisplus.plugins.Page;
import com.baomidou.mybatisplus.service.impl.ServiceImpl;
import com.utils.PageUtils;
import com.utils.Query;


import com.dao.CanguanrenshuDao;
import com.entity.CanguanrenshuEntity;
import com.service.CanguanrenshuService;
import com.entity.vo.CanguanrenshuVO;
import com.entity.view.CanguanrenshuView;

@Service("canguanrenshuService")
public class CanguanrenshuServiceImpl extends ServiceImpl<CanguanrenshuDao, CanguanrenshuEntity> implements CanguanrenshuService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<CanguanrenshuEntity> page = this.selectPage(
                new Query<CanguanrenshuEntity>(params).getPage(),
                new EntityWrapper<CanguanrenshuEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<CanguanrenshuEntity> wrapper) {
		  Page<CanguanrenshuView> page =new Query<CanguanrenshuView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<CanguanrenshuVO> selectListVO(Wrapper<CanguanrenshuEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public CanguanrenshuVO selectVO(Wrapper<CanguanrenshuEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<CanguanrenshuView> selectListView(Wrapper<CanguanrenshuEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public CanguanrenshuView selectView(Wrapper<CanguanrenshuEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}

    @Override
    public List<Map<String, Object>> selectValue(Map<String, Object> params, Wrapper<CanguanrenshuEntity> wrapper) {
        return baseMapper.selectValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectTimeStatValue(Map<String, Object> params, Wrapper<CanguanrenshuEntity> wrapper) {
        return baseMapper.selectTimeStatValue(params, wrapper);
    }

    @Override
    public List<Map<String, Object>> selectGroup(Map<String, Object> params, Wrapper<CanguanrenshuEntity> wrapper) {
        return baseMapper.selectGroup(params, wrapper);
    }

}
