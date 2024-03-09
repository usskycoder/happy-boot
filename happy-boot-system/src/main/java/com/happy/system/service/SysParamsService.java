package com.happy.system.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysParamsEntity;
import com.happy.system.query.SysParamsQuery;
import com.happy.system.vo.SysParamsVO;
import java.util.List;
/**
 * 参数管理
 *
 * @author skycoder
 */
public interface SysParamsService extends BaseService<SysParamsEntity> {
    PageResult<SysParamsVO> page(SysParamsQuery query);
    void save(SysParamsVO vo);
    void update(SysParamsVO vo);
    void delete(List<Long> idList);
    /**
     * 根据paramKey，获取字符串值
     *
     * @param paramKey 参数Key
     */
    String getString(String paramKey);
    /**
     * 根据paramKey，获取整型值
     *
     * @param paramKey 参数Key
     */
    int getInt(String paramKey);
    /**
     * 根据paramKey，获取布尔值
     *
     * @param paramKey 参数Key
     */
    boolean getBoolean(String paramKey);
    /**
     * 根据paramKey，获取对象值
     *
     * @param paramKey  参数Key
     * @param valueType 类型
     */
    <T> T getJSONObject(String paramKey, Class<T> valueType);
}