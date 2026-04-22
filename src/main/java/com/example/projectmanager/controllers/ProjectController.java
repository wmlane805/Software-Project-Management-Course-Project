package com.example.projectmanager.controllers;

import com.example.projectmanager.model.*;
import com.example.projectmanager.model.ProjectManager;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
public class ProjectController {

    private List<ProjectManager> projects = new ArrayList<>();

    public ProjectController() {
        // Mock data
        ProjectManager p = new ProjectManager(1L, "Demo Project", "Jay");
        p.getMembers().addAll(List.of("Alice", "Bob"));

        p.getFunctionalRequirements().add("Login System");
        p.getNonFunctionalRequirements().add("Fast Performance");

        p.getRisks().add("Tight deadline");

        p.getEfforts().add(new Effort("Login System"));

        projects.add(p);
    }

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("projects", projects);
        model.addAttribute("selectedProject", null);
        return "home";
    }

    @GetMapping("/project/{id}")
    public String selectProject(@PathVariable Long id, Model model) {
        ProjectManager p = projects.stream()
                .filter(x -> x.getId().equals(id))
                .findFirst()
                .orElse(null);

        model.addAttribute("projects", projects);
        model.addAttribute("selectedProject", p);
        return "home";
    }

    @PostMapping("/project/create")
    public String createProject(@RequestParam String name,
                                @RequestParam String owner,
                                @RequestParam String members) {

        ProjectManager p = new ProjectManager(System.currentTimeMillis(), name, owner);
        p.setMembers(Arrays.asList(members.split(",")));
        projects.add(p);

        return "redirect:/";
    }

    @GetMapping("/requirements/{id}")
    public String requirements(@PathVariable Long id, Model model) {
        model.addAttribute("project", find(id));
        return "requirements";
    }

    @GetMapping("/risks/{id}")
    public String risks(@PathVariable Long id, Model model) {
        model.addAttribute("project", find(id));
        return "risks";
    }

    @GetMapping("/effort/{id}")
    public String effort(@PathVariable Long id, Model model) {
        model.addAttribute("project", find(id));
        return "effort";
    }

    private ProjectManager find(Long id) {
        return projects.stream().filter(p -> p.getId().equals(id)).findFirst().orElse(null);
    }
}