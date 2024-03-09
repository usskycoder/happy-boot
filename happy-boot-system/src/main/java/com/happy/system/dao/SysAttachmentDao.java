package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysAttachmentEntity;
import org.apache.ibatis.annotations.Mapper;
/**
 * 附件管理
 *
 * @author skycoder
 */
@Mapper
public interface SysAttachmentDao extends BaseDao<SysAttachmentEntity> {
}