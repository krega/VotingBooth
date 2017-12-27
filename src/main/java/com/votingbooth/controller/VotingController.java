package com.votingbooth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by W10x64 on 14.12.2017.
 */
@Controller
public class VotingController {
    @RequestMapping("/userVot")
    public String userVot()
    {
        return "userVot";
    }
}
