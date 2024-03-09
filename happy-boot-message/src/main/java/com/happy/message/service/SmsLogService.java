package com.happy.message.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.message.entity.SmsLogEntity;
import com.happy.message.query.SmsLogQuery;
import com.happy.message.vo.SmsLogVO;
/**
 * 短信日志
 *
 * @author skycoder
 */
public interface SmsLogService extends BaseService<SmsLogEntity> {
    PageResult<SmsLogVO> page(SmsLogQuery query);
}