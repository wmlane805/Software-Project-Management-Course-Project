package com.example.projectmanager.model;

import java.util.*;

public class ProjectManager {

    private Long id;
    private String name;
    private String owner;

    private List<String> members = new ArrayList<>();
    private List<String> functionalRequirements = new ArrayList<>();
    private List<String> nonFunctionalRequirements = new ArrayList<>();
    private List<String> risks = new ArrayList<>();
    private List<Effort> efforts = new ArrayList<>();

    public ProjectManager(Long id, String name, String owner) {
        this.id = id;
        this.name = name;
        this.owner = owner;
    }

    // GETTERS
    public Long getId() { return id; }
    public String getName() { return name; }
    public String getOwner() { return owner; }
    public List<String> getMembers() { return members; }
    public List<String> getFunctionalRequirements() { return functionalRequirements; }
    public List<String> getNonFunctionalRequirements() { return nonFunctionalRequirements; }
    public List<String> getRisks() { return risks; }
    public List<Effort> getEfforts() { return efforts; }

    // SETTERS
    public void setMembers(List<String> members) { this.members = members; }
    public void setFunctionalRequirements(List<String> f) { this.functionalRequirements = f; }
    public void setNonFunctionalRequirements(List<String> nf) { this.nonFunctionalRequirements = nf; }
    public void setRisks(List<String> risks) { this.risks = risks; }
    public void setEfforts(List<Effort> efforts) { this.efforts = efforts; }
}