package com.happy.framework.common.config;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Contact;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import org.springdoc.core.models.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
/**
 * Swagger配置
 *
 * @author skycoder
 */
@Configuration
public class SwaggerConfig {
    @Bean
    public GroupedOpenApi userApi() {
        String[] paths = {"/**"};
        String[] packagedToMatch = {"com.happy"};
        return GroupedOpenApi.builder().group("Happy")
                .pathsToMatch(paths)
                .packagesToScan(packagedToMatch).build();
    }
    @Bean
    public OpenAPI customOpenAPI() {
        Contact contact = new Contact();
        contact.setName("skycoder");
        return new OpenAPI().info(new Info()
                .title("HappyBoot")
                .description("HappyBoot")
                .contact(contact)
                .version("3.0")
                .license(new License().name("MIT")));
    }
}