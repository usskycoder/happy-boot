package com.happy.storage.properties;
import lombok.Data;
/**
 * 阿里云存储配置项
 *
 * @author skycoder
 */
@Data
public class AliyunStorageProperties {
    private String endPoint;
    private String accessKeyId;
    private String accessKeySecret;
    private String bucketName;
}
