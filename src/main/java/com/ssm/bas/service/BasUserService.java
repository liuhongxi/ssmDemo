package com.ssm.bas.service;
import com.ssm.bas.model.BasUser;

public interface BasUserService {

    int deleteByPrimaryKey(String id);

    int insert(BasUser record);

    int insertSelective(BasUser record);

    BasUser selectByPrimaryKey(String id);

    int updateByPrimaryKeySelective(BasUser record);

    int updateByPrimaryKey(BasUser record);

    BasUser selectByParam(BasUser record);

}
