package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysLogLoginEntity;
import org.apache.ibatis.annotations.Mapper;
/**
 * 登录日志
 *
 * @author skycoder
 */
@Mapper
public interface SysLogLoginDao extends BaseDao<SysLogLoginEntity> {
}