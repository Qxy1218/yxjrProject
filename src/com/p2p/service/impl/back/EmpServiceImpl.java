package com.p2p.service.impl.back;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.p2p.mapper.EmpMapper;
import com.p2p.pojo.Employe;
import com.p2p.service.back.EmpService;
/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 后台员工的Service实现类
 * */
@Component
@Service
public class EmpServiceImpl implements EmpService{
    
	@Resource
	private EmpMapper empMapper;
	
	@Override
	public int addModel(Employe model) {
		
		return addModel(model);
	}

	@Override
	public Employe getModel(Employe model) {
		return getModel(model);
	}

	@Override
	public List<Employe> getAllModel() {
		return empMapper.getAllModel();
	}

	@Override
	public int update(Employe user) {
		return 0;
	}

	@Override
	public int delete(Employe user) {
		return 0;
	}



	@Override
	public Employe getByemployname(String ename) {
		return empMapper.getByemployname(ename);
	}

	@Override
	public Employe findModel(Integer id) {
		return null;
	}

}
