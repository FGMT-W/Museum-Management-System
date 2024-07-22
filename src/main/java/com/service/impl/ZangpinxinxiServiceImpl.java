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


import com.dao.ZangpinxinxiDao;
import com.entity.ZangpinxinxiEntity;
import com.service.ZangpinxinxiService;
import com.entity.vo.ZangpinxinxiVO;
import com.entity.view.ZangpinxinxiView;

@Service("zangpinxinxiService")
public class ZangpinxinxiServiceImpl extends ServiceImpl<ZangpinxinxiDao, ZangpinxinxiEntity> implements ZangpinxinxiService {
	
	
    @Override
    public PageUtils queryPage(Map<String, Object> params) {
        Page<ZangpinxinxiEntity> page = this.selectPage(
                new Query<ZangpinxinxiEntity>(params).getPage(),
                new EntityWrapper<ZangpinxinxiEntity>()
        );
        return new PageUtils(page);
    }
    
    @Override
	public PageUtils queryPage(Map<String, Object> params, Wrapper<ZangpinxinxiEntity> wrapper) {
		  Page<ZangpinxinxiView> page =new Query<ZangpinxinxiView>(params).getPage();
	        page.setRecords(baseMapper.selectListView(page,wrapper));
	    	PageUtils pageUtil = new PageUtils(page);
	    	return pageUtil;
 	}
    
    @Override
	public List<ZangpinxinxiVO> selectListVO(Wrapper<ZangpinxinxiEntity> wrapper) {
 		return baseMapper.selectListVO(wrapper);
	}
	
	@Override
	public ZangpinxinxiVO selectVO(Wrapper<ZangpinxinxiEntity> wrapper) {
 		return baseMapper.selectVO(wrapper);
	}
	
	@Override
	public List<ZangpinxinxiView> selectListView(Wrapper<ZangpinxinxiEntity> wrapper) {
		return baseMapper.selectListView(wrapper);
	}

	@Override
	public ZangpinxinxiView selectView(Wrapper<ZangpinxinxiEntity> wrapper) {
		return baseMapper.selectView(wrapper);
	}


}
