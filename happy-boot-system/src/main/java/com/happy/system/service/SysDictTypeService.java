package com.happy.system.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysDictTypeEntity;
import com.happy.system.query.SysDictTypeQuery;
import com.happy.system.vo.SysDictTypeVO;
import com.happy.system.vo.SysDictVO;
import java.util.List;
/**
 * 数据字典
 *
 * @author skycoder
 */
public interface SysDictTypeService extends BaseService<SysDictTypeEntity> {
    PageResult<SysDictTypeVO> page(SysDictTypeQuery query);
    void save(SysDictTypeVO vo);
    void update(SysDictTypeVO vo);
    void delete(List<Long> idList);
    /**
     * 获取动态SQL数据
     */
    List<SysDictVO.DictData> getDictSql(Long id);
    /**
     * 获取全部字典列表
     */
    List<SysDictVO> getDictList();
    /**
     * 刷新字典缓存
     */
    void refreshTransCache();
}