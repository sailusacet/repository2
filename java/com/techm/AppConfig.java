package com.techm;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@Configuration
@ComponentScan(basePackages = "com.techm")
public class AppConfig {

    public static void main(String[] args) {
        // Load the configuration class
        AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

        // Retrieve the UserService bean from the context
        UserService userService = context.getBean(UserService.class);

        // Use the userService object
        userService.doSomething();

        // Close the context
        context.close();
    }
}
