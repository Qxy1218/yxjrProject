package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.ActivityMapper;
import com.p2p.pojo.Activity;
import com.p2p.service.front.ActivityServiceFront;
@Transactional
@Service
public class ActivityServiceImplFront implements ActivityServiceFront{
	@Resource
	private ActivityMapper activityMapper;
	@Override
	public int addModel(Activity model) {
		// TODO Auto-generated method stub
		return 0;
	}

	
	@Override
	public List<Activity> getAllModel() {
		return  activityMapper.getAllModel();
	}

	@Override
	public int update(Activity model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Activity model) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Activity findModel(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public Activity getModel(Activity model) {
		// TODO Auto-generated method stub
		return null;
	}
	//前台查询方法
	public List<Activity> listActivity() {
		return activityMapper.listActivity();
	}
}
