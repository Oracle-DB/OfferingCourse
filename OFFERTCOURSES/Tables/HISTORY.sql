CREATE TABLE offertcourses.history (
  empno NUMBER(4) NOT NULL,
  beginyear NUMBER(4) NOT NULL,
  begindate DATE NOT NULL,
  enddate DATE,
  deptno NUMBER(2) NOT NULL,
  msal NUMBER(6,2) NOT NULL,
  comments VARCHAR2(60 BYTE),
  CONSTRAINT h_beg_end_chk CHECK (begindate < enddate),
  CONSTRAINT h_pk PRIMARY KEY (empno,begindate),
  CONSTRAINT h_dept_fk FOREIGN KEY (deptno) REFERENCES offertcourses.departments (deptno),
  CONSTRAINT h_empno_fk FOREIGN KEY (empno) REFERENCES offertcourses.employee (empno) ON DELETE CASCADE
);
COMMENT ON COLUMN offertcourses.history.empno IS 'Employee         (references EMPLOYEES)';
COMMENT ON COLUMN offertcourses.history.beginyear IS 'Year component of BEGINDATE';
COMMENT ON COLUMN offertcourses.history.begindate IS 'Begin date interval';
COMMENT ON COLUMN offertcourses.history.enddate IS 'End date interval';
COMMENT ON COLUMN offertcourses.history.deptno IS 'Department       (references DEPARTMENTS)';
COMMENT ON COLUMN offertcourses.history.msal IS 'Monthly salary during the interval';
COMMENT ON COLUMN offertcourses.history.comments IS 'Free text space';