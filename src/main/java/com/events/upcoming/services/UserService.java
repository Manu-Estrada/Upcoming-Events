package com.events.upcoming.services;

import java.util.List;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
// import org.springframework.security.crypto.factory.PasswordEncoderFactories;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.events.upcoming.models.User;
import com.events.upcoming.repositories.UserRepository;

@Service
public class UserService {
    
    private UserRepository repository;

    public UserService(UserRepository repository) {
        this.repository = repository;
    }

    public User store(User user) {
        PasswordEncoder encoder = new BCryptPasswordEncoder();
        String encodePassword = encoder.encode(user.getPassword());
        user.setPassword(encodePassword);
        return repository.save(user);
    }

    public User storeEvent(User user) {
        return repository.save(user);
    }

    public List<User> listAll() {
        return repository.findAll();
    }

    public User listOne(Long id) {
        return repository.findById(id).orElse(null);
    }

    public User listOneByName(String userName) {
        return repository.findByUsername(userName).orElse(null);
    }

}