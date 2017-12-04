package com.p2p.base;

import java.io.Serializable;
import java.util.List;

public interface IBaseService<PK extends Serializable,T> {
	int addUser(T user);
	 T getUser(T user);
	 List<T> getAllUser();
	 int update(T user);
	 int delete(T user);
	 T findUser(PK id);
}
