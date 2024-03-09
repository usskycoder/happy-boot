package com.happy.storage.properties;
import lombok.Data;
/**
 * 七牛云存储配置项
 *
 * @author skycoder
 */
@Data
public class QiniuStorageProperties {
    private String accessKey;
    private String secretKey;
    private String bucketName;
}
