package com.beanLifeCycle;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import com.beanLifeCycle.UserService;

public class App {

    public static void main(String[] args) {
        // Load the Spring XML configuration file
        ApplicationContext context = new ClassPathXmlApplicationContext("applicationContext.xml");

        // Retrieve the UserService bean from the context
        UserService userService = (UserService) context.getBean("userService");

        // Use the userService object
        userService.doSomething();

        // Close the context to release resources
        ((ClassPathXmlApplicationContext) context).close();
    }
}
