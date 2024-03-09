package com.happy.system.entity;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;
import lombok.EqualsAndHashCode;
import com.happy.framework.mybatis.entity.BaseEntity;
/**
 * 用户角色关系
 *
 * @author skycoder
 */
@Data
@EqualsAndHashCode(callSuper=false)
@TableName("sys_user_role")
public class SysUserRoleEntity extends BaseEntity {
	private static final long serialVersionUID = 1L;
	/**
	 * 角色ID
	 */
	private Long roleId;
	/**
	 * 用户ID
	 */
	private Long userId;
}
