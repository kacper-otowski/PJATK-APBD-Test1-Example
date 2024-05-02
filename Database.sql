-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-05-02 13:35:28.08

-- tables
-- Table: GroupAssignments
CREATE TABLE GroupAssignments (
                                  Student_ID int  NOT NULL,
                                  Group_ID int  NOT NULL,
                                  CONSTRAINT GroupAssignments_pk PRIMARY KEY  (Student_ID,Group_ID)
);

-- Table: Groups
CREATE TABLE Groups (
                        ID int  NOT NULL IDENTITY,
                        Name nvarchar(50)  NOT NULL,
                        CONSTRAINT Groups_pk PRIMARY KEY  (ID)
);

-- Table: Students
CREATE TABLE Students (
                          ID int  NOT NULL IDENTITY,
                          FirstName nvarchar(50)  NOT NULL,
                          LastName nvarchar(50)  NOT NULL,
                          Phone nvarchar(9)  NOT NULL,
                          Birthdate date  NOT NULL,
                          CONSTRAINT Students_pk PRIMARY KEY  (ID)
);

-- foreign keys
-- Reference: GroupAssignments_Groups (table: GroupAssignments)
ALTER TABLE GroupAssignments ADD CONSTRAINT GroupAssignments_Groups
    FOREIGN KEY (Group_ID)
        REFERENCES Groups (ID);

-- Reference: GroupAssignments_Students (table: GroupAssignments)
ALTER TABLE GroupAssignments ADD CONSTRAINT GroupAssignments_Students
    FOREIGN KEY (Student_ID)
        REFERENCES Students (ID);

-- End of file.

