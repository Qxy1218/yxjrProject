package com.p2p.mapper;

import java.io.Serializable;

import com.p2p.base.IBaseDao;
import com.p2p.pojo.Employe;

public interface EmpMapper extends IBaseDao<Serializable, Employe>{
	Employe getByemployname(String ename);
}
