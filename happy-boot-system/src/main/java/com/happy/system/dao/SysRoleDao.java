package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysRoleEntity;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import java.util.List;
/**
 * 角色管理
 *
 * @author skycoder
 */
@Mapper
public interface SysRoleDao extends BaseDao<SysRoleEntity> {
    /**
     * 根据用户ID，获取用户最大的数据范围
     */
    Integer getDataScopeByUserId(@Param("userId") Long userId);
    /**
     * 根据用户ID，获取用户角色编码
     */
    List<String> geRoleCodeByUserId(@Param("userId") Long userId);
}
