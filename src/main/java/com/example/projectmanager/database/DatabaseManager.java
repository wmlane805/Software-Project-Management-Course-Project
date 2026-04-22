package com.example.projectmanager.database;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.Map;

@Repository
public class DatabaseManager {

    private final JdbcTemplate jdbc;

    public DatabaseManager(JdbcTemplate jdbc) {
        this.jdbc = jdbc;
    }

    public void createProject(String name, String description, String owner) {
        String sql = "INSERT INTO projects (name, description, owner) VALUES (?, ?, ?)";
        jdbc.update(sql, name, description, owner);
    }

    public List<Map<String, Object>> getAllProjects() {
        String sql = "SELECT * FROM projects";
        return jdbc.queryForList(sql);
    }

    public Map<String, Object> getProjectById(Long id) {
        String sql = "SELECT * FROM projects WHERE id = ?";
        return jdbc.queryForMap(sql, id);
    }

    public void setProjectCompleted(Long id, boolean isCompleted) {
        String sql = "UPDATE projects SET is_completed = ? WHERE id = ?";
        jdbc.update(sql, isCompleted, id);
    }

    public void addMember(Long projectId, String name) {
        String sql = "INSERT INTO team_members (project_id, name) VALUES (?, ?)";
        jdbc.update(sql, projectId, name);
    }

    public List<Map<String, Object>> getMembersByProject(Long projectId) {
        String sql = "SELECT * FROM team_members WHERE project_id = ?";
        return jdbc.queryForList(sql, projectId);
    }

    public void deleteMember(Long memberId) {
        String sql = "DELETE FROM team_members WHERE member_id = ?";
        jdbc.update(sql, memberId);
    }

    public void addRequirement(Long projectId, String type, String description) {
        String sql = "INSERT INTO requirements (project_id, type, description) VALUES (?, ?, ?)";
        jdbc.update(sql, projectId, type, description);
    }

    public List<Map<String, Object>> retrieveRequirements(Long projectId) {
        String sql = "SELECT * FROM requirements WHERE project_id = ?";
        return jdbc.queryForList(sql, projectId);
    }

    public void deleteRequirement(Long requirementId) {
        String sql = "DELETE FROM requirements WHERE id = ?";
        jdbc.update(sql, requirementId);
    }

    public void newRisk(Long projectId, String title, String description) {
        String sql = "INSERT INTO risks (project_id, title, description) VALUES (?, ?, ?)";
        jdbc.update(sql, projectId, title, description);
    }

    public List<Map<String, Object>> retrieveRisks(Long projectId) {
        String sql = "SELECT * FROM risks WHERE project_id = ?";
        return jdbc.queryForList(sql, projectId);
    }

    public void deleteRisk(Long riskId) {
        String sql = "DELETE FROM risks WHERE id = ?";
        jdbc.update(sql, riskId);
    }

    public void newEffortLog(Long requirementId, String phase, double hours, String memberName) {
        String sql = "INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (?, ?, ?, ?)";
        jdbc.update(sql, requirementId, phase, hours, memberName);
    }

    public List<Map<String, Object>> retrieveEffortLogs(Long requirementId) {
        String sql = "SELECT * FROM effort WHERE requirement_id = ?";
        return jdbc.queryForList(sql, requirementId);
    }

    public void deleteEffortLog(Long effortId) {
        String sql = "DELETE FROM effort WHERE id = ?";
        jdbc.update(sql, effortId);
    }

    public void newProject(Long projectId) {
        String sql = "INSERT INTO project (project_id) VALUES (?)";
        jdbc.update(sql, projectId);
    }

    public Map<String, Object> retrieveProject(Long projectId) {
        String sql = "SELECT * FROM project WHERE project_id = ?";
        return jdbc.queryForMap(sql, projectId);
    }

    public void deleteProject(Long projectId) {
        String sql = "DELETE FROM projects WHERE id = ?";
        jdbc.update(sql, projectId);
    }

    public List<Map<String, Object>> pullEffortLogs(Long projectId) {
        String sql = "SELECT e.*, r.description as requirement_description " +
                "FROM effort e " +
                "JOIN requirements r ON e.requirement_id = r.id " +
                "WHERE r.project_id = ?";
        return jdbc.queryForList(sql, projectId);
    }

    public void completeRequirement(Long requirementId) {
        String sql = "UPDATE requirements SET is_completed = CASE WHEN is_completed = 1 THEN 0 ELSE 1 END WHERE id = ?";
        jdbc.update(sql, requirementId);
    }

    public void updateEffort(Long effortId, double hours) {
        String sql = "UPDATE effort SET hours = ? WHERE id = ?";
        jdbc.update(sql, hours, effortId);
    }

    public Map<String, Object> totalHours(Long projectId) {
        String sql = "SELECT " +
                "SUM(CASE WHEN e.phase = 'analysis' THEN e.hours ELSE 0 END) as analysis, " +
                "SUM(CASE WHEN e.phase = 'design' THEN e.hours ELSE 0 END) as design, " +
                "SUM(CASE WHEN e.phase = 'coding' THEN e.hours ELSE 0 END) as coding, " +
                "SUM(CASE WHEN e.phase = 'testing' THEN e.hours ELSE 0 END) as testing, " +
                "SUM(CASE WHEN e.phase = 'management' THEN e.hours ELSE 0 END) as management " +
                "FROM effort e " +
                "JOIN requirements r ON e.requirement_id = r.id " +
                "WHERE r.project_id = ?";
        return jdbc.queryForMap(sql, projectId);
    }

    public void UpdateProjectStatus(Long projectId) {
        String sql = "UPDATE projects SET is_completed = CASE WHEN is_completed = 1 THEN 0 ELSE 1 END WHERE id = ?";
        jdbc.update(sql, projectId);
    }

}