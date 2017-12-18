package com.p2p.service.impl.back;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.baomidou.mybatisplus.plugins.Page;
import com.p2p.mapper.RoleMapper;
import com.p2p.pojo.Role;
import com.p2p.service.back.RoleService;
import com.p2p.util.PageInfo;

@Transactional
@Service
public class RoleServiceImpl implements RoleService{
	@Resource
	private RoleMapper roleMapper;

	
	@Override
	public int update(Role role) {
		return roleMapper.update(role);
	}

	@Override
	public int delete(Role role) {
		return roleMapper.delete(role);
	}

	

	@Override
	public void selectPage(PageInfo pageInfo) {
		//传入一个分页bean pageInfo
		Page<Role> page = new Page(pageInfo.getNowpage(),pageInfo.getSize());
		List<Role> list = roleMapper.selectPage(page, pageInfo.getCondition());
		pageInfo.setRows(list);
		pageInfo.setTotal(page.getTotal());
	}

	@Override
	public Integer roleCount() {
		return roleMapper.roleCount();
	}

	@Override
	public int addModel(Role role) {
		return roleMapper.addModel(role);
	}

	@Override
	public Role getModel(Role role) {
		return roleMapper.getModel(role);
	}

	@Override
	public List<Role> getAllModel() {
		return roleMapper.getAllModel();
	}

	@Override
	public Role findModel(Integer id) {
		return roleMapper.findModel(id);
	}
}
