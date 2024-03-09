package com.happy.system.convert;
import com.happy.system.entity.SysUserTokenEntity;
import com.happy.system.vo.SysUserTokenVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
/**
 * 用户Token
 * @author skycoder
 */
@Mapper
public interface SysUserTokenConvert {
    SysUserTokenConvert INSTANCE = Mappers.getMapper(SysUserTokenConvert.class);
    SysUserTokenEntity convert(SysUserTokenVO vo);
    SysUserTokenVO convert(SysUserTokenEntity entity);
}