package com.happy.framework.mybatis.interceptor;
import lombok.AllArgsConstructor;
import lombok.Data;
/**
 * 数据范围
 *
 * @author skycoder
 */
@Data
@AllArgsConstructor
public class DataScope {
    private String sqlFilter;
}