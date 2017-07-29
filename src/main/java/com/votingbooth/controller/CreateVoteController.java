package com.votingbooth.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by W10x64 on 22.07.2017.
 */
@Controller
public class CreateVoteController {
    @RequestMapping("/admin/createVote")
    public String home()
    {
        return "createVote";
    }
}
