package com.happy.system.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysDictDataEntity;
import com.happy.system.query.SysDictDataQuery;
import com.happy.system.vo.SysDictDataVO;
import java.util.List;
/**
 * 数据字典
 *
 * @author skycoder
 */
public interface SysDictDataService extends BaseService<SysDictDataEntity> {
    PageResult<SysDictDataVO> page(SysDictDataQuery query);
    void save(SysDictDataVO vo);
    void update(SysDictDataVO vo);
    void delete(List<Long> idList);
}