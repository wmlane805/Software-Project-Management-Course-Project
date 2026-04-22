CREATE TABLE IF NOT EXISTS projects (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "owner" TEXT NOT NULL,
    "is_completed" BOOLEAN DEFAULT 0
);

CREATE TABLE IF NOT EXISTS project (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "project_id" INTEGER NOT NULL,
    "requirement_id" INTEGER,
    "member_id" INTEGER,
    "risk_id" INTEGER,
    "effort_id" INTEGER,
    FOREIGN KEY ("project_id") REFERENCES projects("id"),
    FOREIGN KEY ("requirement_id") REFERENCES requirements("id"),
    FOREIGN KEY ("member_id") REFERENCES team_members("member_id"),
    FOREIGN KEY ("risk_id") REFERENCES risks("id"),
    FOREIGN KEY ("effort_id") REFERENCES effort("id")
    );

CREATE TABLE IF NOT EXISTS team_members (
    "member_id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "project_id" INTEGER,
    "name" TEXT NOT NULL,
    FOREIGN KEY (project_id) REFERENCES projects("id")
);

CREATE TABLE IF NOT EXISTS requirements (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "project_id" INTEGER,
    "type" TEXT CHECK(type IN ('functional', 'non-functional')),
    "description" TEXT NOT NULL,
    "is_completed" BOOLEAN DEFAULT 0,
    FOREIGN KEY("project_id") REFERENCES projects("id")
    );

CREATE TABLE IF NOT EXISTS risks (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "project_id" INTEGER,
    "description" TEXT NOT NULL,
    "title" TEXT NOT NULL,
    FOREIGN KEY("project_id") REFERENCES projects("id")
);

CREATE TABLE IF NOT EXISTS effort (
    "id" INTEGER PRIMARY KEY AUTOINCREMENT,
    "requirement_id" INTEGER,
    "phase" TEXT CHECK(phase IN ('analysis', 'design', 'coding', 'testing', 'management')),
    "hours" REAL NOT NULL,
    "member_name" TEXT,
    FOREIGN KEY("requirement_id") REFERENCES requirements("id")
);
