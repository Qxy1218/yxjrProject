package com.p2p.service.back;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Userlevel;
import com.p2p.util.PageInfo;

public interface UserlevelService extends IBaseService<Integer, Userlevel>{
	//实现分页查询
			abstract void selectPage(PageInfo pageInfo);//实现分页
			
			
			//查询总的记录数
			abstract Integer UserlevelCount();
}
