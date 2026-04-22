package com.example.projectmanager.controllers;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import com.example.projectmanager.database.DatabaseManager;
import java.util.Map;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;


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
        List<Map<String, Object>> efforts = db.pullEffortLogs(id);

        Map<String, Map<String, List<Map<String, Object>>>> grouped = new LinkedHashMap<>();

        for (Map<String, Object> e : efforts) {
            String req = (String) e.get("requirement_description");
            String phase = (String) e.get("phase");

            grouped.computeIfAbsent(req, k -> new LinkedHashMap<>())
                    .computeIfAbsent(phase, k -> new ArrayList<>())
                    .add(e);
        }

        System.out.println("Efforts size: " + efforts.size());
        System.out.println("Grouped size: " + grouped.size());

        model.addAttribute("grouped", grouped);
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
        model.addAttribute("totals", db.totalHours(id));
        model.addAttribute("project", db.getProjectById(id));
        return "projectsummarypage";
    }

    @GetMapping("/delete/{id}")
    public String deleteProject(@PathVariable Long id) {
        db.deleteProject(id);
        return "redirect:/";
    }

    @PostMapping("/requirements/add/{id}")
    public String addRequirement(@PathVariable Long id,
                                 @RequestParam String description,
                                 @RequestParam String type) {
        db.addRequirement(id, type, description);
        return "redirect:/requirements/" + id;
    }

    @GetMapping("/requirements/delete/{requirementId}/{projectId}")
    public String deleteRequirement(@PathVariable Long requirementId,
                                    @PathVariable Long projectId) {
        db.deleteRequirement(requirementId);
        return "redirect:/requirements/" + projectId;
    }

    @GetMapping("/requirements/complete/{requirementId}/{projectId}")
    public String completedRequirement(@PathVariable Long requirementId,
                                       @PathVariable Long projectId) {
        db.completeRequirement(requirementId);
        return "redirect:/requirements/" + projectId;
    }

    @PostMapping("/risks/add/{id}")
    public String addRisk(@PathVariable Long id,
                          @RequestParam String title,
                          @RequestParam String description) {
        db.newRisk(id, title, description);
        return "redirect:/risks/" + id;
    }

    @GetMapping("/risks/delete/{riskId}/{projectId}")
    public String deleteRisk(@PathVariable Long riskId,
                             @PathVariable Long projectId) {
        db.deleteRisk(riskId);
        return "redirect:/risks/" + projectId;
    }

    @PostMapping("/effort/save/{id}")
    public String saveEffort(@PathVariable Long id,
                             @RequestParam Map<String, String> params) {
        for (Map.Entry<String, String> entry : params.entrySet()) {
            if (entry.getKey().startsWith("effort_")) {
                Long effortId = Long.parseLong(entry.getKey().replace("effort_", ""));
                double hours = Double.parseDouble(entry.getValue());
                db.updateEffort(effortId, hours);
            }
        }
        return "redirect:/effort/" + id;
    }

    @GetMapping("/project/complete/{id}")
    public String completeProject(@PathVariable Long id) {
        db.UpdateProjectStatus(id);
        return "redirect:/summary/" + id;
    }

}