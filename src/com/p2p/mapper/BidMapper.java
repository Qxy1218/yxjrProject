package com.p2p.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.baomidou.mybatisplus.plugins.pagination.Pagination;
import com.p2p.base.IBaseDao;
import com.p2p.pojo.Bid;

/**
 * 关于投标的后台操作
 * 饶磊
 * 2018-1-5
 * */
public interface BidMapper extends IBaseDao<Integer, Bid>{
			//实现分页查询
			List<Bid> selectPage(Pagination page,Map<String ,Object> params,@Param(value="bid") Bid bid);
			//查询总的记录数
			abstract Integer contactcount();
}
