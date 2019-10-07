CREATE TABLE offertcourses.registrations (
  attende NUMBER(4) NOT NULL,
  course VARCHAR2(6 BYTE) NOT NULL,
  begindate DATE NOT NULL,
  "EVALUATION" NUMBER(1) CONSTRAINT r_eval_chk CHECK ("EVALUATION" in (1,2,3,4,5)),
  CONSTRAINT r_pk PRIMARY KEY (attende,course,begindate),
  CONSTRAINT r_att_fk FOREIGN KEY (attende) REFERENCES offertcourses.employee (empno),
  CONSTRAINT r_off_fk FOREIGN KEY (course,begindate) REFERENCES offertcourses.offerings (course,begindate)
);
COMMENT ON COLUMN offertcourses.registrations.attende IS 'Attendee         (references EMPLOYEES)';
COMMENT ON COLUMN offertcourses.registrations.course IS 'Course code      (references OFFERINGS)';
COMMENT ON COLUMN offertcourses.registrations.begindate IS 'First course day (references OFFERINGS)';
COMMENT ON COLUMN offertcourses.registrations."EVALUATION" IS 'Attendee''s opinion (scale 1 - 5)';