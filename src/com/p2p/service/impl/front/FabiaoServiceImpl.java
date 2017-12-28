package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.FabiaoMapper;
import com.p2p.pojo.Fabiao;
import com.p2p.service.front.FabiaoService;
@Transactional
@Service
public class FabiaoServiceImpl implements FabiaoService{
	
	@Resource
	private FabiaoMapper fabiaomapper;
	
	@Override
	public int addModel(Fabiao model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Fabiao getModel(Fabiao model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Fabiao> getAllModel() {
		// TODO Auto-generated method stub
		return fabiaomapper.getAllModel();
	}

	@Override
	public int update(Fabiao model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Fabiao model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Fabiao findModel(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

}
