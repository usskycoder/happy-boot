package com.happy.system.convert;
import com.happy.system.entity.SysLogLoginEntity;
import com.happy.system.vo.SysLogLoginVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import java.util.List;
/**
 * 登录日志
 *
 * @author skycoder
 */
@Mapper
public interface SysLogLoginConvert {
    SysLogLoginConvert INSTANCE = Mappers.getMapper(SysLogLoginConvert.class);
    SysLogLoginEntity convert(SysLogLoginVO vo);
    SysLogLoginVO convert(SysLogLoginEntity entity);
    List<SysLogLoginVO> convertList(List<SysLogLoginEntity> list);
}