package com.happy.system.convert;
import com.happy.system.entity.SysThirdLoginEntity;
import com.happy.system.vo.SysThirdLoginVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import java.util.List;
/**
 * 第三方登录
 *
 * @author skycoder
 */
@Mapper
public interface SysThirdLoginConvert {
    SysThirdLoginConvert INSTANCE = Mappers.getMapper(SysThirdLoginConvert.class);
    SysThirdLoginEntity convert(SysThirdLoginVO vo);
    SysThirdLoginVO convert(SysThirdLoginEntity entity);
    List<SysThirdLoginVO> convertList(List<SysThirdLoginEntity> list);
}