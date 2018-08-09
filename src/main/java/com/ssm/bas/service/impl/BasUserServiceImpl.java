package com.ssm.bas.service.impl;
import com.ssm.bas.dao.BasUserDao;
import com.ssm.bas.model.BasUser;
import com.ssm.bas.service.BasUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BasUserServiceImpl implements BasUserService {

    @Autowired
    private BasUserDao basUserMapper;

    @Override
    public BasUser selectByParam(BasUser record) {
        return basUserMapper.selectByParam(record);
    }

    @Override
    public int deleteByPrimaryKey(String id) {
        return basUserMapper.deleteByPrimaryKey(id);
    }

    @Override
    public int insert(BasUser record) {
        return basUserMapper.insert(record);
    }

    @Override
    public int insertSelective(BasUser record) {
        return basUserMapper.insert(record);
    }

    @Override
    public BasUser selectByPrimaryKey(String id) {
        return basUserMapper.selectByPrimaryKey(id);
    }

    @Override
    public int updateByPrimaryKeySelective(BasUser record) {
        return basUserMapper.updateByPrimaryKeySelective(record);
    }

    @Override
    public int updateByPrimaryKey(BasUser record) {
        return updateByPrimaryKey(record);
    }
}
