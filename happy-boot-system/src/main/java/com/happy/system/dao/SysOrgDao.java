package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysOrgEntity;
import org.apache.ibatis.annotations.Mapper;
import java.util.List;
import java.util.Map;
/**
 * 机构管理
 * 
 * @author skycoder
 */
@Mapper
public interface SysOrgDao extends BaseDao<SysOrgEntity> {
    List<SysOrgEntity> getList(Map<String, Object> params);
    /**
     * 获取所有机构的id、pid列表
     */
    List<SysOrgEntity> getIdAndPidList();
}