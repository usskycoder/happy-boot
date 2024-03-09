package com.happy.system.controller;
import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import jakarta.validation.Valid;
import lombok.AllArgsConstructor;
import com.happy.framework.common.query.Query;
import com.happy.framework.common.utils.PageResult;
import com.happy.framework.common.utils.Result;
import com.happy.system.convert.SysThirdLoginConfigConvert;
import com.happy.system.entity.SysThirdLoginConfigEntity;
import com.happy.system.service.SysThirdLoginConfigService;
import com.happy.system.vo.SysThirdLoginConfigVO;
import org.springdoc.core.annotations.ParameterObject;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;
import java.util.List;
/**
 * 第三方登录配置
 *
 * @author skycoder
 */
@RestController
@RequestMapping("sys/third/config")
@Tag(name = "第三方登录配置")
@AllArgsConstructor
public class SysThirdLoginConfigController {
    private final SysThirdLoginConfigService sysThirdLoginConfigService;
    @GetMapping("page")
    @Operation(summary = "分页")
    @PreAuthorize("hasAuthority('third:config:all')")
    public Result<PageResult<SysThirdLoginConfigVO>> page(@ParameterObject @Valid Query query) {
        PageResult<SysThirdLoginConfigVO> page = sysThirdLoginConfigService.page(query);
        return Result.ok(page);
    }
    @GetMapping("{id}")
    @Operation(summary = "信息")
    @PreAuthorize("hasAuthority('third:config:all')")
    public Result<SysThirdLoginConfigVO> get(@PathVariable("id") Long id) {
        SysThirdLoginConfigEntity entity = sysThirdLoginConfigService.getById(id);
        return Result.ok(SysThirdLoginConfigConvert.INSTANCE.convert(entity));
    }
    @PostMapping
    @Operation(summary = "保存")
    @PreAuthorize("hasAuthority('third:config:all')")
    public Result<String> save(@RequestBody SysThirdLoginConfigVO vo) {
        sysThirdLoginConfigService.save(vo);
        return Result.ok();
    }
    @PutMapping
    @Operation(summary = "修改")
    @PreAuthorize("hasAuthority('third:config:all')")
    public Result<String> update(@RequestBody @Valid SysThirdLoginConfigVO vo) {
        sysThirdLoginConfigService.update(vo);
        return Result.ok();
    }
    @DeleteMapping
    @Operation(summary = "删除")
    @PreAuthorize("hasAuthority('third:config:all')")
    public Result<String> delete(@RequestBody List<Long> idList) {
        sysThirdLoginConfigService.delete(idList);
        return Result.ok();
    }
}