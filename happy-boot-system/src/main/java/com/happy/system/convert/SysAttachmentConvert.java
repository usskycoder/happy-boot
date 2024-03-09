package com.happy.system.convert;
import com.happy.system.entity.SysAttachmentEntity;
import com.happy.system.vo.SysAttachmentVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import java.util.List;
/**
 * 附件管理
 *
 * @author skycoder
 */
@Mapper
public interface SysAttachmentConvert {
    SysAttachmentConvert INSTANCE = Mappers.getMapper(SysAttachmentConvert.class);
    SysAttachmentEntity convert(SysAttachmentVO vo);
    SysAttachmentVO convert(SysAttachmentEntity entity);
    List<SysAttachmentVO> convertList(List<SysAttachmentEntity> list);
}