package com.happy.system.convert;
import com.happy.system.entity.SysThirdLoginConfigEntity;
import com.happy.system.vo.SysThirdLoginConfigVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import java.util.List;
/**
 * 第三方登录配置
 *
 * @author skycoder
 */
@Mapper
public interface SysThirdLoginConfigConvert {
    SysThirdLoginConfigConvert INSTANCE = Mappers.getMapper(SysThirdLoginConfigConvert.class);
    SysThirdLoginConfigEntity convert(SysThirdLoginConfigVO vo);
    SysThirdLoginConfigVO convert(SysThirdLoginConfigEntity entity);
    List<SysThirdLoginConfigVO> convertList(List<SysThirdLoginConfigEntity> list);
}