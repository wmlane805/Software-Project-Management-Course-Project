--Seed Data


INSERT INTO projects (name, description, owner) VALUES ('Example Project', 'An example project', 'Victoria K.');

INSERT INTO team_members (project_id, name) VALUES (1, 'Victoria K.');
INSERT INTO team_members (project_id, name) VALUES (1, 'Connor Kishbach');
INSERT INTO team_members (project_id, name) VALUES (1, 'Jay Jalla');
INSERT INTO team_members (project_id, name) VALUES (1, 'Wendell Jones');
INSERT INTO team_members (project_id, name) VALUES (1, 'William Lane');

INSERT INTO requirements (project_id, type, description) VALUES (1, 'functional', 'Project Dashboard');
INSERT INTO requirements (project_id, type, description) VALUES (1, 'functional', 'Project Requirements Page');
INSERT INTO requirements (project_id, type, description) VALUES (1, 'functional', 'Project Risks Page');
INSERT INTO requirements (project_id, type, description) VALUES (1, 'functional', 'Project Summary Page');

INSERT INTO requirements (project_id, type, description) VALUES (1, 'non-functional', 'Security');
INSERT INTO requirements (project_id, type, description) VALUES (1, 'non-functional', 'Performance');
INSERT INTO requirements (project_id, type, description) VALUES (1, 'non-functional', 'Usability');


INSERT INTO risks (project_id, title, description) VALUES (1, 'Schedule Risk', 'Time Crunch');


INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'analysis', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'analysis', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'analysis', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'analysis', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'analysis', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'analysis', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'analysis', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'analysis', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'analysis', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'analysis', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'analysis', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'analysis', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'analysis', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'analysis', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'analysis', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'analysis', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'analysis', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'analysis', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'analysis', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'analysis', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'analysis', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'analysis', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'analysis', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'analysis', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'analysis', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'analysis', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'analysis', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'analysis', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'analysis', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'analysis', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'analysis', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'analysis', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'analysis', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'analysis', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'analysis', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'design', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'design', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'design', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'design', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'design', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'design', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'design', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'design', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'design', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'design', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'design', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'design', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'design', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'design', 0, 'Victoria K.');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'coding', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'coding', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'coding', 0, 'William Lane');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'coding', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'coding', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'coding', 0, 'William Lane');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'coding', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'coding', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'coding', 0, 'William Lane');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'coding', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'coding', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'coding', 0, 'William Lane');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'coding', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'coding', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'coding', 0, 'William Lane');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'coding', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'coding', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'coding', 0, 'William Lane');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'coding', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'coding', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'coding', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'testing', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'testing', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'testing', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'testing', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (1, 'testing', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'testing', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'testing', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'testing', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'testing', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (2, 'testing', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'testing', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'testing', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'testing', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'testing', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (3, 'testing', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'testing', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'testing', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'testing', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'testing', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (4, 'testing', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'testing', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'testing', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'testing', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'testing', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (5, 'testing', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'testing', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'testing', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'testing', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'testing', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (6, 'testing', 0, 'William Lane');

INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'testing', 0, 'Victoria K.');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'testing', 0, 'Connor Kishbach');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'testing', 0, 'Jay Jalla');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'testing', 0, 'Wendell Jones');
INSERT INTO effort (requirement_id, phase, hours, member_name) VALUES (7, 'testing', 0, 'William Lane');