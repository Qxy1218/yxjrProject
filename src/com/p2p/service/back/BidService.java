package com.p2p.service.back;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Bid;
import com.p2p.util.PageInfo;

public interface BidService extends IBaseService<Integer, Bid>{
			//实现分页查询
			abstract void selectPage(@Param(value="pageInfo")PageInfo pageInfo,@Param(value="bid") Bid bid);//实现分页
			//查询总的记录数
			abstract Integer Contactcount();
}
