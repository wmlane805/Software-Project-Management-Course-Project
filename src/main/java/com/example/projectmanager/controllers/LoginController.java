package com.example.projectmanager.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class LoginController {


    @GetMapping("/")
    public String root() {
        return "redirect:/dashboard";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "dashboard"; // your file name
    }

    @GetMapping("/projects")
    public String projects() {
        return "projectinfopage";
    }

    @GetMapping("/requirements")
    public String requirements() {
        return "requirementspage";
    }

    @GetMapping("/tracking")
    public String tracking() {
        return "efforttrackingpage";
    }

    @GetMapping("/summary")
    public String summary() {
        return "projectsummarypage";
    }
}
