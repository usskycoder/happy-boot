package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysPostEntity;
import org.apache.ibatis.annotations.Mapper;
/**
* 岗位管理
*
* @author 阿沐 babamu@126.com
*/
@Mapper
public interface SysPostDao extends BaseDao<SysPostEntity> {
}