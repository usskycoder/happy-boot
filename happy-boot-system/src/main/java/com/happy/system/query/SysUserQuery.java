package com.happy.system.query;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Data;
import lombok.EqualsAndHashCode;
import com.happy.framework.common.query.Query;
/**
 * 用户查询
 *
 * @author skycoder
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Schema(description = "用户查询")
public class SysUserQuery extends Query {
    @Schema(description = "用户名")
    private String username;
    @Schema(description = "手机号")
    private String mobile;
    @Schema(description = "机构ID")
    private Long orgId;
}
