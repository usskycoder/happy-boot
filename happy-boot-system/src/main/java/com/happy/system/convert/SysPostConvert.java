package com.happy.system.convert;
import com.happy.system.entity.SysPostEntity;
import com.happy.system.vo.SysPostVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import java.util.List;
@Mapper
public interface SysPostConvert {
    SysPostConvert INSTANCE = Mappers.getMapper(SysPostConvert.class);
    SysPostVO convert(SysPostEntity entity);
    SysPostEntity convert(SysPostVO vo);
    List<SysPostVO> convertList(List<SysPostEntity> list);
}
