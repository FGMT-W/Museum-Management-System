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


import com.dao.ZhanlanxinxiDao;
import com.entity.ZhanlanxinxiEntity;
import com.service.ZhanlanxinxiService;
import com.entity.vo.ZhanlanxinxiVO;
import com.entity.view.ZhanlanxinxiView;

@Service("zhanlanxinxiService")
public class ZhanlanxinxiServiceImpl extends ServiceImpl<ZhanlanxinxiDao, ZhanlanxinxiEntity> implements ZhanlanxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZhanlanxinxiEntity> page = this.selectPage(
                new Query<ZhanlanxinxiEntity>(params).getPage(),
                new EntityWrapper<ZhanlanxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZhanlanxinxiEntity> wrapper) {
		  Page<ZhanlanxinxiView> page =new Query<ZhanlanxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZhanlanxinxiVO> selectListVO(Wrapper<ZhanlanxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZhanlanxinxiVO selectVO(Wrapper<ZhanlanxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZhanlanxinxiView> selectListView(Wrapper<ZhanlanxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZhanlanxinxiView selectView(Wrapper<ZhanlanxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
