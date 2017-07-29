package com.votingbooth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by W10x64 on 18.07.2017.
 */
@Controller
public class AdminController {
    @RequestMapping("/admin")
    public String home()
    {
        return "admin";
    }
}
