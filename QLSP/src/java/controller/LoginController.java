/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.inject.Named;
import javax.faces.bean.RequestScoped;
import controller.LoginController;
import javax.faces.bean.ManagedBean;
/**
 *
 * @author Pyl Walker
 */
@Named(value = "loginController")
@ManagedBean
@RequestScoped
public class LoginController {
    protected String username;
    protected String password;
    /**
     * Creates a new instance of LoginController
     */
    public LoginController() {
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    public String login(){
        if(username.equals("admin")&&password.equals("admin")){
            return "success";
        } else{
            return "fail";
        }
    }
}
