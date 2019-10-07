CREATE TABLE offertcourses.departments (
  deptno NUMBER(2) NOT NULL CONSTRAINT d_dptno_chk CHECK (mod(deptno,10) = 0),
  dname VARCHAR2(10 BYTE) NOT NULL CONSTRAINT d_dname_chk CHECK (dname = upper(dname)),
  "LOCATION" VARCHAR2(8 BYTE) NOT NULL CONSTRAINT d_loc_chk CHECK ("LOCATION" = upper("LOCATION")),
  mgr NUMBER(4),
  CONSTRAINT departments_pk PRIMARY KEY (deptno),
  CONSTRAINT d_dname_uk UNIQUE (dname),
  CONSTRAINT d_mgr_fk FOREIGN KEY (deptno) REFERENCES offertcourses.employee (empno)
);
COMMENT ON COLUMN offertcourses.departments.deptno IS 'Unique department number';
COMMENT ON COLUMN offertcourses.departments.dname IS 'Name of the department';
COMMENT ON COLUMN offertcourses.departments."LOCATION" IS 'Location (city)';
COMMENT ON COLUMN offertcourses.departments.mgr IS 'Manager (references EMPLOYEES)';