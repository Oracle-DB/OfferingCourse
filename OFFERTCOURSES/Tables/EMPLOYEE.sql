CREATE TABLE offertcourses.employee (
  empno NUMBER(4) NOT NULL CONSTRAINT e_empno_chk CHECK (EMPNO > 7000),
  ename VARCHAR2(8 BYTE) NOT NULL,
  init VARCHAR2(5 BYTE) NOT NULL,
  "JOB" VARCHAR2(8 BYTE),
  mgr NUMBER(4),
  bdate DATE NOT NULL,
  msal NUMBER(6,2) NOT NULL,
  comm NUMBER(6,2),
  deptno NUMBER(2),
  CONSTRAINT e_pk PRIMARY KEY (empno),
  CONSTRAINT e_dept_fk FOREIGN KEY (deptno) REFERENCES offertcourses.departments (deptno),
  CONSTRAINT e_mgr_fk FOREIGN KEY (empno) REFERENCES offertcourses.employee (empno)
);
COMMENT ON COLUMN offertcourses.employee.empno IS 'Unique employee number.';
COMMENT ON COLUMN offertcourses.employee.ename IS 'Last name';
COMMENT ON COLUMN offertcourses.employee.init IS 'Initials (without punctuation)';
COMMENT ON COLUMN offertcourses.employee."JOB" IS 'Job description';
COMMENT ON COLUMN offertcourses.employee.mgr IS 'Manager (references EMPLOYEES)';
COMMENT ON COLUMN offertcourses.employee.bdate IS 'Date of birth';
COMMENT ON COLUMN offertcourses.employee.msal IS 'Monthly salary (excluding net bonus)';
COMMENT ON COLUMN offertcourses.employee.comm IS 'Commission (per year, for sales reps)';
COMMENT ON COLUMN offertcourses.employee.deptno IS 'Department (references DEPARTMENTS)';