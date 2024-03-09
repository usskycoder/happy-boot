package com.happy.system.service;
import me.zhyd.oauth.request.AuthRequest;
import com.happy.framework.common.query.Query;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysThirdLoginConfigEntity;
import com.happy.system.vo.SysThirdLoginConfigVO;
import java.util.List;
/**
 * 第三方登录配置
 *
 * @author skycoder
 */
public interface SysThirdLoginConfigService extends BaseService<SysThirdLoginConfigEntity> {
    PageResult<SysThirdLoginConfigVO> page(Query query);
    void save(SysThirdLoginConfigVO vo);
    void update(SysThirdLoginConfigVO vo);
    void delete(List<Long> idList);
    /**
     * 根据类型，获取授权请求
     *
     * @param openType 第三方登录类型
     */
    AuthRequest getAuthRequest(String openType);
}