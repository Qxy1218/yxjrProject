package com.p2p.service.impl.front;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.p2p.mapper.IUserMapper;
import com.p2p.pojo.User;
import com.p2p.service.front.IUserService;

@Transactional
@Service
public class IUserServiceImpl implements IUserService{
	@Resource
	private IUserMapper iUserMapper;

	@Override
	public int addUser(User user) {
		return iUserMapper.addUser(user);
	}

	@Override
	public User getUser(User user) {
		return iUserMapper.getUser(user);
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int update(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(User user) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public User findUser(Integer id) {
		// TODO Auto-generated method stub
		return null;
	}

}
