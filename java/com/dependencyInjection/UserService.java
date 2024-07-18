package com.dependencyInjection;

public class UserService {
    private final UserRepository userRepository;
    public void someMethod() {
        // Method implementation
        System.out.println("Executing someMethod in UserService");
    }
    // Constructor for constructor-based DI
    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
        
    }

    // Methods using userRepository
}
