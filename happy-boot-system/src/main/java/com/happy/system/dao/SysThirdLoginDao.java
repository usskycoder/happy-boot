package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysThirdLoginEntity;
import org.apache.ibatis.annotations.Mapper;
/**
 * 第三方登录
 *
 * 
 */
@Mapper
public interface SysThirdLoginDao extends BaseDao<SysThirdLoginEntity> {
}