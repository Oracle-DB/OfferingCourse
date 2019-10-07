CREATE TABLE offertcourses.offerings (
  course VARCHAR2(6 BYTE) NOT NULL,
  begindate DATE NOT NULL,
  trainer NUMBER(4),
  "LOCATION" VARCHAR2(8 BYTE),
  CONSTRAINT o_pk PRIMARY KEY (course,begindate),
  CONSTRAINT o_course_fk FOREIGN KEY (course) REFERENCES offertcourses.courses (code)
);
COMMENT ON COLUMN offertcourses.offerings.course IS 'Course code      (references COURSES)';
COMMENT ON COLUMN offertcourses.offerings.begindate IS 'First course day';
COMMENT ON COLUMN offertcourses.offerings.trainer IS 'Instructor';
COMMENT ON COLUMN offertcourses.offerings."LOCATION" IS 'Location of the course offering';