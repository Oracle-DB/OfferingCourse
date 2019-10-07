CREATE TABLE offertcourses.salgrades (
  grade NUMBER(2) NOT NULL,
  lowerlimit NUMBER(6,2) NOT NULL CONSTRAINT s_lower_chk CHECK (lowerlimit >= 0),
  upperlimit NUMBER(6,2) NOT NULL,
  bonus NUMBER(6,2) NOT NULL,
  CONSTRAINT s_lo_up_chk CHECK (lowerlimit <= upperlimit),
  CONSTRAINT salgrades_pk PRIMARY KEY (grade)
);
COMMENT ON COLUMN offertcourses.salgrades.grade IS 'Unique salary grade number';
COMMENT ON COLUMN offertcourses.salgrades.lowerlimit IS 'Minimum salary for this grade';
COMMENT ON COLUMN offertcourses.salgrades.upperlimit IS 'Maximum salary for this grade';
COMMENT ON COLUMN offertcourses.salgrades.bonus IS 'Net bonus on top of monthly salary';