package com.happy.message.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.message.entity.SmsPlatformEntity;
import com.happy.message.query.SmsPlatformQuery;
import com.happy.message.sms.config.SmsConfig;
import com.happy.message.vo.SmsPlatformVO;
import java.util.List;
/**
 * 短信平台
 *
 * @author skycoder
 */
public interface SmsPlatformService extends BaseService<SmsPlatformEntity> {
    PageResult<SmsPlatformVO> page(SmsPlatformQuery query);
    /**
     * 启用的短信平台列表
     */
    List<SmsConfig> listByEnable();
    void save(SmsPlatformVO vo);
    void update(SmsPlatformVO vo);
    void delete(List<Long> idList);
}