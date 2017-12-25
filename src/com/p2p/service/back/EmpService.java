package com.p2p.service.back;

import java.io.Serializable;



import com.p2p.base.IBaseService;
import com.p2p.pojo.Employe;
import com.p2p.util.PageInfo;
/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 后台员工的Service
 * */
public interface EmpService extends IBaseService<Integer, Employe>{
   Employe getByemployname(String  ename);
   
 //实现分页查询
 	abstract void selectPage(PageInfo pageInfo);//实现分页
 		
 	//查询总的记录数
 	abstract Integer employeCount();
}
