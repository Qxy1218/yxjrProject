package com.p2p.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.Newsfocus;

/**
 * 关于新闻聚焦的mapper
 * 饶磊
 * 2018.1.19
 * */
public interface NewsfocusMapper extends IBaseDao<Integer, Newsfocus>{
	/** 
	 * 使用注解方式传入多个参数，用户产品分页，
	 * @param page 
	 * @return startPos},#{pageSize}  
	 */  
	public List<Newsfocus> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize")Integer  pageSize);  
		  
	/** 
	 * 取得产品数量信息，
	 * @return 
	 */  
	public long getProductsCount();  
}
