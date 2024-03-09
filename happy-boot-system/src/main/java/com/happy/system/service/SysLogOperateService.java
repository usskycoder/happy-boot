package com.happy.system.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysLogOperateEntity;
import com.happy.system.query.SysLogOperateQuery;
import com.happy.system.vo.SysLogOperateVO;
/**
 * 操作日志
 *
 * @author skycoder
 */
public interface SysLogOperateService extends BaseService<SysLogOperateEntity> {
    PageResult<SysLogOperateVO> page(SysLogOperateQuery query);
}