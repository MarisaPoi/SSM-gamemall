package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/user")
public class UserHandler {
    @Autowired
    private UserService userService;
    @GetMapping("/index")
    public ModelAndView index(){
        ModelAndView modelAndView=new ModelAndView();
        modelAndView.setViewName("index");
        modelAndView.addObject("userlist",userService.findAll());
        return modelAndView;
    }
    @GetMapping("/login")
    public ModelAndView login(String name,String password) {
        System.out.println(name);
        System.out.println(password);
        User user = new User();
        user = userService.login(name, password);
        if (user != null) {
            if (user.getRole() == 0) {
                System.out.println("管理员登录成功");
                ModelAndView modelAndView = new ModelAndView();
                modelAndView.setViewName("manager");
                modelAndView.addObject("userlist", userService.findAll());
                return modelAndView;
            } else {
                System.out.println("用户登录成功");
                ModelAndView modelAndView = new ModelAndView();
                modelAndView.setViewName("user");
                return modelAndView;
            }
        } else {
            System.out.println("用户名或密码错误");
            ModelAndView modelAndView = new ModelAndView();
            modelAndView.setViewName("login");
            return modelAndView;
        }
    }
}
