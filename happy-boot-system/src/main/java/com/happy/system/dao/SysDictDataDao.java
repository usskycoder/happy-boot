package com.happy.system.dao;
import com.happy.framework.mybatis.dao.BaseDao;
import com.happy.system.entity.SysDictDataEntity;
import com.happy.system.vo.SysDictVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import java.util.List;
/**
 * 字典数据
 *
 * @author skycoder
 */
@Mapper
public interface SysDictDataDao extends BaseDao<SysDictDataEntity> {
    @Select("${sql}")
    List<SysDictVO.DictData> getListForSql(@Param("sql") String sql);
}
