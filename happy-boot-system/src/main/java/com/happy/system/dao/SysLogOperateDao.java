package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysLogOperateEntity;
import org.apache.ibatis.annotations.Mapper;
/**
 * 操作日志
 *
 * 
 */
@Mapper
public interface SysLogOperateDao extends BaseDao<SysLogOperateEntity> {
}