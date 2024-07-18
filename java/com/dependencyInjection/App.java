package com.dependencyInjection;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.dependencyInjection.UserService;

public class App {

    public static void main(String[] args) {
        // Load the configuration class
        ApplicationContext context = new AnnotationConfigApplicationContext(AppConfig.class);

        // Retrieve the UserService bean from the context
        UserService userService = context.getBean(UserService.class);

        // Use the userService object
        userService.someMethod();

        // Close the context
        ((AnnotationConfigApplicationContext) context).close();
    }
}
