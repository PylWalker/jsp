/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.inject.Named;
import javax.enterprise.context.RequestScoped;

/**
 *
 * @author Pyl Walker
 */
@Named(value = "userController")
@RequestScoped
public class UserController {
    String name;
    /**
     * Creates a new instance of UserController
     */
    public UserController() {}

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
    
    public String hello(){
        return "success";
    }
}
