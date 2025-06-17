package com.repository;

import com.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserRepository {
    public List<User> findAll();

    public User login(@Param("name") String name,@Param("password") String password);
}
