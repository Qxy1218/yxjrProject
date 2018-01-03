package com.p2p.service.front;

import java.util.List;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.ProjectSelect;

public interface FabiaoService extends IBaseService<Integer, Fabiao>{
	List<Fabiao> selectByType(String type);
	List<Fabiao> selectByLike(ProjectSelect rProjectSelect);
}
