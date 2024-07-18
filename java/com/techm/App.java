package com.techm;

import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class App {

    public static void main(String[] args) {
        // Load Spring application context using Java configuration class
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

        // Retrieve bean from Spring container
        UserService userService = context.getBean(UserService.class);

        // Use the userService instance
        userService.doSomething();
    }
}
