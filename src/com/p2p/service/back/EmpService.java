package com.p2p.service.back;

import java.io.Serializable;



import com.p2p.base.IBaseService;
import com.p2p.pojo.Employe;
/**
 * 操作人:汪栋才
 * 操作时间:2017-12-18
 * 后台员工的Service
 * */
public interface EmpService extends IBaseService<Integer, Employe>{
   Employe getByemployname(String  ename);
}
