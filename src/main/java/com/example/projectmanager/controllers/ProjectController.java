package com.example.projectmanager.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.projectmanager.database.DatabaseManager;

@Controller
public class ProjectController {

    private final DatabaseManager db;

    public ProjectController(DatabaseManager db) {
        this.db = db;
    }


    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("projects", db.getAllProjects());
        return "home";
    }

    @GetMapping("/project/{id}")
    public String selectProject(@PathVariable Long id, Model model) {
        model.addAttribute("projects", db.getAllProjects());
        model.addAttribute("selectedProject", db.getProjectById(id));
        model.addAttribute("projectId", id);
        return "home";
    }

    @PostMapping("/project/create")
    public String createProject(@RequestParam String name,
                                @RequestParam String owner,
                                @RequestParam String description) {
        db.createProject(name, description, owner);
        return "redirect:/";
    }

    @GetMapping("/requirements/{id}")
    public String requirements(@PathVariable Long id, Model model) {
        model.addAttribute("requirements", db.retrieveRequirements(id));
        model.addAttribute("projectId", id);
        return "requirementspage";
    }

    @GetMapping("/risks/{id}")
    public String risks(@PathVariable Long id, Model model) {
        model.addAttribute("risks", db.retrieveRisks(id));
        model.addAttribute("projectId", id);
        return "risks";
    }

    @GetMapping("/effort/{id}")
    public String effort(@PathVariable Long id, Model model) {
        model.addAttribute("efforts", db.pullEffortLogs(id));
        model.addAttribute("projectId", id);
        return "efforttrackingpage";
    }

    @GetMapping("/dashboard")
    public String dashboard() {
        return "redirect:/";
    }

    @GetMapping("/summary/{id}")
    public String summary(@PathVariable Long id, Model model) {
        model.addAttribute("projectId", id);
        return "projectsummarypage";
    }

    @GetMapping("/delete/{id}")
    public String deleteProject(@PathVariable Long id) {
        db.deleteProject(id);
        return "redirect:/";
    }
}