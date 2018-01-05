package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Userinfo;
import com.p2p.pojo.Uservouch;

public interface UservouchMapper extends IBaseDao<Integer, Uservouch>{
	//实现分页查询
	List<Uservouch> selectPage(Pagination page,Map<String ,Object> params);
	
	//查询总的记录数
	abstract Integer UservouchyCount();
	
	//查询所有的用户
	abstract List<Userinfo> seleUservouchList();
}
