package com.p2p.service.back;

import java.io.Serializable;



import com.p2p.base.IBaseService;
import com.p2p.pojo.Employe;

public interface EmpService extends IBaseService<Serializable, Employe>{
   Employe getByemployname(String  ename);
}
