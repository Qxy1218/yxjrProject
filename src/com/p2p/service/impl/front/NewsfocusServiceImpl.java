package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.NewsfocusMapper;
import com.p2p.pojo.Newsfocus;
import com.p2p.service.front.NewsfocusService;

@Transactional
@Service
public class NewsfocusServiceImpl implements NewsfocusService{
	
	@Resource
	private NewsfocusMapper newsfocusMapper;
	
	@Override
	public int addModel(Newsfocus model) {
		return newsfocusMapper.addModel(model);
	}

	@Override
	public Newsfocus getModel(Newsfocus model) {
		return newsfocusMapper.getModel(model);
	}

	@Override
	public List<Newsfocus> getAllModel() {
		return newsfocusMapper.getAllModel();
	}

	@Override
	public int update(Newsfocus model) {
		return newsfocusMapper.update(model);
	}

	@Override
	public int delete(Newsfocus model) {
		return newsfocusMapper.delete(model);
	}

	@Override
	public Newsfocus findModel(Integer id) {
		return newsfocusMapper.findModel(id);
	}

	@Override
	public List<Newsfocus> selectProductsByPage(Integer startPos, Integer pageSize) {
		return newsfocusMapper.selectProductsByPage(startPos, pageSize);
	}

	@Override
	public long getProductsCount() {
		return newsfocusMapper.getProductsCount();
	}
	
}
