package com.happy.message.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.message.entity.SmsPlatformEntity;
import org.apache.ibatis.annotations.Mapper;
/**
* 短信平台
*
* @author 阿沐 babamu@126.com
*/
@Mapper
public interface SmsPlatformDao extends BaseDao<SmsPlatformEntity> {
}