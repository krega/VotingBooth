package com.votingbooth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by W10x64 on 13.07.2017.
 */

@Controller
public class HomeController {

    @RequestMapping("/")
    public String home()
    {
        return "home";
    }
}
