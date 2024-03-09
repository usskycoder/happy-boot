package com.happy.system.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysPostEntity;
import com.happy.system.query.SysPostQuery;
import com.happy.system.vo.SysPostVO;
import java.util.List;
/**
 * 岗位管理
 *
 * 
 */
public interface SysPostService extends BaseService<SysPostEntity> {
    PageResult<SysPostVO> page(SysPostQuery query);
    List<SysPostVO> getList();
    List<String> getNameList(List<Long> idList);
    void save(SysPostVO vo);
    void update(SysPostVO vo);
    void delete(List<Long> idList);
}