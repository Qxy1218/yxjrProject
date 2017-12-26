package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Indexpic;
import com.p2p.pojo.Redmoney;
import com.p2p.pojo.Role;

public interface RedmoneyMapper extends IBaseDao<Integer, Redmoney>{
	//实现分页查询
			List<Redmoney> selectPage(Pagination page,Map<String ,Object> params);
			
			//查询总的记录数
			abstract Integer redmoneyCount();
}