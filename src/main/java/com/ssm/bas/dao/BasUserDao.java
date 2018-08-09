package com.ssm.bas.dao;

import com.ssm.bas.model.BasUser;

public interface BasUserDao {
    int deleteByPrimaryKey(String id);

    int insert(BasUser record);

    int insertSelective(BasUser record);

    BasUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BasUser record);

    int updateByPrimaryKey(BasUser record);

    BasUser selectByParam(BasUser record);
}