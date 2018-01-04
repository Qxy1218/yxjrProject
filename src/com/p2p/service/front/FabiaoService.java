package com.p2p.service.front;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.p2p.base.IBaseService;
import com.p2p.pojo.Fabiao;
import com.p2p.pojo.ProjectSelect;

public interface FabiaoService extends IBaseService<Integer, Fabiao>{
	List<Fabiao> selectByType(String type);
	List<Fabiao> selectByLike(ProjectSelect rProjectSelect);
	List<Fabiao> getAreasById(String cityid);
	
	/** 
	 * 使用注解方式传入多个参数，用户产品分页， 根据标类型查询
	 * @param page 
	 * @param 标类型 
	 * @return startPos},#{pageSize}  
	 */  
	public List<Fabiao> selectProductsByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize")Integer  pageSize,@Param(value="fpart")String fpart);  
	  
	/** 
	 * 取得产品数量信息，
	 * @return 
	 */  
	public long getProductsCount(@Param(value="fpart")String fpart);  
}
