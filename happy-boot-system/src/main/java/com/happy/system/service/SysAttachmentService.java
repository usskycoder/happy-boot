package com.happy.system.service;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.mybatis.service.BaseService;
import com.happy.system.entity.SysAttachmentEntity;
import com.happy.system.query.SysAttachmentQuery;
import com.happy.system.vo.SysAttachmentVO;
import java.util.List;
/**
 * 附件管理
 *
 * @author skycoder
 */
public interface SysAttachmentService extends BaseService<SysAttachmentEntity> {
    PageResult<SysAttachmentVO> page(SysAttachmentQuery query);
    void save(SysAttachmentVO vo);
    void update(SysAttachmentVO vo);
    void delete(List<Long> idList);
}