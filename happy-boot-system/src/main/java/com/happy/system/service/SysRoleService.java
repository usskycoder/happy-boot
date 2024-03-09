package com.happy.system.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysRoleEntity;
import com.happy.system.query.SysRoleQuery;
import com.happy.system.vo.SysRoleDataScopeVO;
import com.happy.system.vo.SysRoleVO;
import java.util.List;
/**
 * 角色
 * 
 * @author skycoder
 */
public interface SysRoleService extends BaseService<SysRoleEntity> {
	PageResult<SysRoleVO> page(SysRoleQuery query);
	List<SysRoleVO> getList(SysRoleQuery query);
	void save(SysRoleVO vo);
	void update(SysRoleVO vo);
	void dataScope(SysRoleDataScopeVO vo);
	void delete(List<Long> idList);
}
