CREATE TABLE projects (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "description" TEXT NOT NULL,
    "owner" TEXT NOT NULL,
    "is_completed" BOOLEAN DEFAULT 0
);

CREATE TABLE team_members (
    "member_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "project_id" INTEGER,
    "name" TEXT NOT NULL,
    FOREIGN KEY (project_id) REFERENCES projects("id")
);

CREATE TABLE requirements (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "project_id" INTEGER,
    "type" TEXT CHECK(type IN ('functional', 'non-functional')),
    "description" TEXT NOT NULL,
    FOREIGN KEY("project_id") REFERENCES projects("id")
);

CREATE TABLE risks (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "project_id" INTEGER,
    "description" TEXT NOT NULL,
    FOREIGN KEY("project_id") REFERENCES projects("id")
);

CREATE TABLE effort_logs (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "requirement_id" INTEGER,
    "phase" TEXT CHECK(phase IN ('analysis', 'design', 'coding', 'testing', 'management')),
    "hours" REAL NOT NULL,
    "member_name" TEXT,
    FOREIGN KEY("requirement_id") REFERENCES requirements("id")
);

SELECT
    r.id AS requirement_id,
    r.description,
    SUM(e.hours) AS total_hours
FROM requirements r
LEFT JOIN effort_logs e
    ON r.id = e.requirement_id
GROUP BY r.id, r.description;
