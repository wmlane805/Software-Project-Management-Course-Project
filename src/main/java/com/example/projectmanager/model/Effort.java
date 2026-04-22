package com.example.projectmanager.model;

public class Effort {

    private String requirement;
    private int analysis;
    private int design;
    private int coding;
    private int testing;
    private int management;

    public Effort(String requirement) {
        this.requirement = requirement;
    }

    // GETTERS
    public String getRequirement() { return requirement; }
    public int getAnalysis() { return analysis; }
    public int getDesign() { return design; }
    public int getCoding() { return coding; }
    public int getTesting() { return testing; }
    public int getManagement() { return management; }

    // SETTERS
    public void setAnalysis(int analysis) { this.analysis = analysis; }
    public void setDesign(int design) { this.design = design; }
    public void setCoding(int coding) { this.coding = coding; }
    public void setTesting(int testing) { this.testing = testing; }
    public void setManagement(int management) { this.management = management; }
}