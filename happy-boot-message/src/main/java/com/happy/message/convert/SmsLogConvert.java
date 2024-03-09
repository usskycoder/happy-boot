package com.happy.message.convert;
import com.happy.message.entity.SmsLogEntity;
import com.happy.message.vo.SmsLogVO;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;
import java.util.List;
/**
* 短信日志
*
* @author 阿沐 babamu@126.com
*/
@Mapper
public interface SmsLogConvert {
    SmsLogConvert INSTANCE = Mappers.getMapper(SmsLogConvert.class);
    SmsLogVO convert(SmsLogEntity entity);
    List<SmsLogVO> convertList(List<SmsLogEntity> list);
}