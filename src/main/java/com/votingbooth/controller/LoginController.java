package com.votingbooth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by W10x64 on 09.11.2017.
 */
@Controller
public class LoginController {
    @RequestMapping("/login")
    public String home()
    {
        return "login";
    }
}
