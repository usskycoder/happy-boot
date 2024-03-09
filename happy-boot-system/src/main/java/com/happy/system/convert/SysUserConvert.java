package com.happy.system.convert;
import com.happy.framework.security.user.UserDetail;
import com.happy.system.entity.SysUserEntity;
import com.happy.system.vo.SysUserBaseVO;
import com.happy.system.vo.SysUserExcelVO;
import com.happy.system.vo.SysUserVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import java.util.List;
@Mapper
public interface SysUserConvert {
    SysUserConvert INSTANCE = Mappers.getMapper(SysUserConvert.class);
    SysUserVO convert(SysUserEntity entity);
    SysUserEntity convert(SysUserVO vo);
    SysUserEntity convert(SysUserBaseVO vo);
    SysUserVO convert(UserDetail userDetail);
    UserDetail convertDetail(SysUserEntity entity);
    List<SysUserVO> convertList(List<SysUserEntity> list);
    List<SysUserExcelVO> convert2List(List<SysUserEntity> list);
    List<SysUserEntity> convertListEntity(List<SysUserExcelVO> list);
}
