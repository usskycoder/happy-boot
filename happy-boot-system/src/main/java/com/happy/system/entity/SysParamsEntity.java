package com.happy.system.entity;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import com.happy.framework.mybatis.entity.BaseEntity;
/**
 * 参数管理
 *
 * @author skycoder
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("sys_params")
public class SysParamsEntity extends BaseEntity {
    /**
     * 参数名称
     */
    private String paramName;
    /**
     * 系统参数
     */
    private Integer paramType;
    /**
     * 参数键
     */
    private String paramKey;
    /**
     * 参数值
     */
    private String paramValue;
    /**
     * 备注
     */
    private String remark;
    /**
     * 租户ID
     */
    private Long tenantId;
}