package com.p2p.service.impl.back;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.IndexpicMapper;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Role;
import com.p2p.service.back.IndexpicService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class IndexpicServiceImpl implements IndexpicService{
	
	@Resource
	private IndexpicMapper indexpicmapper;
	@Override
	public int addModel(Indexpic model) {
		// TODO Auto-generated method stub
		return addModel(model);
	}

	@Override
	public Indexpic getModel(Indexpic model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Indexpic> getAllModel() {
		// TODO Auto-generated method stub
		return indexpicmapper.getAllModel();
	}

	@Override
	public int update(Indexpic model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Indexpic model) {
		// TODO Auto-generated method stub
		return delete(model);
	}

	@Override
	public Indexpic findModel(Serializable id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void selectPage(PageInfo pageInfo) {
		//传入一个分页bean pageInfo
				Page<Indexpic> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
				List<Indexpic> list = indexpicmapper.selectPage(page, pageInfo.getCondition());
				pageInfo.setRows(list);
				pageInfo.setTotal(page.getTotal());
		
	}

	@Override
	public Integer indexCount() {
		// TODO Auto-generated method stub
		return indexpicmapper.indexCount();
	}


}
