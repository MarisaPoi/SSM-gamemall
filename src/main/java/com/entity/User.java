package com.entity;
import lombok.Data;
@Data
public class User {
    private int uid;
    private String account;
    private String name;
    private String phone;
    private String password;
    private int role;
    public User(){
    }
    public User(String name,String password){
        this.name=name;
        this.password=password;
    }
}
